/*
 * 
 * 
 * 
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.MemberDao;
import com.aboutdata.dao.SafeKeyDao;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.SafeKey;
import com.aboutdata.model.MemberModel;
import com.aboutdata.model.dto.MemberDTO;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.service.MemberService;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.joda.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

/**
 * Service - 会员
 *
 *
 *
 */
@Service("memberServiceImpl")
public class MemberServiceImpl implements MemberService {

    Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

    @Resource
    private MemberDao memberDao;
    @Resource
    private SafeKeyDao safeKeyDao;

    @Transactional(readOnly = true)
    @Override
    public boolean usernameExists(String username) {
        return memberDao.usernameExists(username) > 0;
    }

    @Override
    @Transactional(readOnly = true)
    public boolean emailExists(String email) {
        return memberDao.emailExists(email) > 0;
    }

    @Override
    @Transactional(readOnly = true)
    public boolean emailUnique(String previousEmail, String currentEmail) {
        if (StringUtils.equalsIgnoreCase(previousEmail, currentEmail)) {
            return true;
        } else {
            if (memberDao.emailExists(currentEmail) > 0) {
                return false;
            } else {
                return true;
            }
        }
    }

    @Override
    @Transactional(readOnly = true)
    public Member findByUsername(String username) {
        return memberDao.findByUsername(username);
    }

    @Override
    @Transactional(readOnly = true)
    public Member findByEmail(String email) {
        return memberDao.findByEmail(email);
    }

    @Override
    @Transactional(readOnly = true)
    public boolean isAuthenticated() {
        RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
        if (requestAttributes != null) {
            HttpServletRequest request = ((ServletRequestAttributes) requestAttributes).getRequest();
            Principal principal = (Principal) request.getSession().getAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME);
            if (principal != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    @Transactional(readOnly = true)
    public Member getCurrent() {
        RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
        if (requestAttributes != null) {
            HttpServletRequest request = ((ServletRequestAttributes) requestAttributes).getRequest();
            Principal principal = (Principal) request.getSession().getAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME);
            if (principal != null) {
                return memberDao.findOne(principal.getId());
            }
        }
        return null;
    }

    @Override
    @Transactional(readOnly = true)
    public String getCurrentUsername() {
        RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
        if (requestAttributes != null) {
            HttpServletRequest request = ((ServletRequestAttributes) requestAttributes).getRequest();
            Principal principal = (Principal) request.getSession().getAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME);
            if (principal != null) {
                return principal.getUsername();
            }
        }
        return null;
    }

    @Override
    public Member update(Member member) {
        return memberDao.save(member);
    }

    @Override
    public Member create(Member member) {
        return memberDao.save(member);
    }

    @Override
    public Page<MemberModel> find(Pageable pageable) {
        Page<Member> page = memberDao.findAll(pageable);
        List<Member> members = page.getContent();
        List<MemberModel> models = MemberDTO.getMemberModelsDTO(members);
        Page<MemberModel> result = new PageImpl(models, pageable, page.getTotalElements());
        return result;
    }

    @Override
    public MemberModel findById(String id) {
        Member member = memberDao.findOne(id);
        return MemberDTO.getMemberModelDTO(member);
    }

    @Override
    @Transactional
    public boolean recoverPassword(String email) {
        Member member = findByEmail(email);
        if (member == null) {
            logger.info("info {}", "该邮箱没有任何用户注册记录");
            return false;
        }
        SafeKey safeKey = new SafeKey();
        safeKey.setValue(UUID.randomUUID().toString() + DigestUtils.md5Hex(RandomStringUtils.randomAlphabetic(30)));
        //该验证码12小时过期
        safeKey.setExpire(LocalDateTime.now().plusHours(12).toDate());
        safeKey.setMember(member);
        safeKeyDao.save(safeKey);

        //        emailService.sendFindPasswordMail(member.getEmail(), member.getUsername(), safeKey);
        return true;
    }

    @Override
    public List<SafeKey> getSafeKey(String memberId) {
        return safeKeyDao.findByMemberId(memberId);
    }

    @Override
    @Transactional
    public void expireSafekey(String memberId) {
        List<SafeKey> safeKeys = safeKeyDao.findByMemberId(memberId);
        for (SafeKey safeKey : safeKeys) {
            safeKeyDao.delete(safeKey);
        }
    }

}

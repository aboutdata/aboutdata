/*
 * 
 * 
 * 
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.MemberDao;
import com.aboutdata.domain.Member;
import com.aboutdata.model.MemberModel;
import com.aboutdata.model.dto.MemberDTO;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.service.MemberService;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
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

    @Resource
    private MemberDao memberDao;

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
    public List<Member> findListByEmail(String email) {
        return memberDao.findListByEmail(email);
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

}

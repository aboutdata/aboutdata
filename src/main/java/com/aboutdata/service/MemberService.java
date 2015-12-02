package com.aboutdata.service;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.SafeKey;
import com.aboutdata.model.MemberModel;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * Service - 会员
 *
 *
 *
 */
public interface MemberService {

    /**
     * 判断用户名是否存在
     *
     * @param username 用户名(忽略大小写)
     * @return 用户名是否存在
     */
    boolean usernameExists(String username);

    /**
     * 判断E-mail是否存在
     *
     * @param email E-mail(忽略大小写)
     * @return E-mail是否存在
     */
    boolean emailExists(String email);

    /**
     * 判断E-mail是否唯一
     *
     * @param previousEmail 修改前E-mail(忽略大小写)
     * @param currentEmail 当前E-mail(忽略大小写)
     * @return E-mail是否唯一
     */
    boolean emailUnique(String previousEmail, String currentEmail);

    /**
     * 根据用户名查找会员
     *
     * @param username 用户名(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    Member findByUsername(String username);

    /**
     * 根据E-mail查找会员
     *
     * @param email E-mail(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    Member findByEmail(String email);

    /**
     * 判断会员是否登录
     *
     * @return 会员是否登录
     */
    boolean isAuthenticated();

    /**
     * 获取当前登录会员
     *
     * @return 当前登录会员，若不存在则返回null
     */
    Member getCurrent();

    /**
     * 获取当前登录用户名
     *
     * @return 当前登录用户名，若不存在则返回null
     */
    String getCurrentUsername();

    public Member update(Member member);

    public Member create(Member member);

    public Page<MemberModel> find(Pageable pageable);

    public MemberModel findById(String id);

    public boolean recoverPassword(String email);

    /**
     * @ 获取用户重置密码时的安全密钥
     * @param memberId
     * @return
     */
    public List<SafeKey> getSafeKey(String memberId);

    /**
     * 当用户重置新密码后 之前重置密钥safeKey全部删除
     *
     * @param memberId
     */
    public void expireSafekey(String memberId);

}

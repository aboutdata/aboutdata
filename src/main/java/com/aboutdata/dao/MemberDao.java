package com.aboutdata.dao;

import com.aboutdata.domain.Member;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * Dao - 会员
 *
 *
 *
 */
@Repository
public interface MemberDao extends JpaRepository<Member, Long> {

    /**
     * 判断用户名是否存在
     *
     * @param username 用户名(忽略大小写)
     * @return 用户名是否存在
     */
    @Query("select count(*) from Member members where lower(members.username) = lower(:username)")
    int usernameExists(@Param("username") String username);

    /**
     * 判断E-mail是否存在
     *
     * @param email E-mail(忽略大小写)
     * @return E-mail是否存在
     */
    @Query("select count(*) from Member members where lower(members.email) = lower(:email)")
    int emailExists(@Param("email") String email);

    /**
     * 根据用户名查找会员
     *
     * @param username 用户名(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    @Query("select members from Member members where lower(members.username) = lower(:username)")
    Member findByUsername(@Param("username") String username);

    /**
     * 根据E-mail查找会员
     *
     * @param email E-mail(忽略大小写)
     * @return 会员，若不存在则返回null
     */
    @Query("select members from Member members where lower(members.email) = lower(:email)")
    List<Member> findListByEmail(@Param("email") String email);
}

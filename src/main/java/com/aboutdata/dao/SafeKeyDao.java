/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.domain.SafeKey;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @ 用户安全密钥
 * @ 1 忘记密码设置
 * @author Administrator
 */
@Repository
public interface SafeKeyDao extends JpaRepository<SafeKey, String> {

    /**
     * @记录会有多条 因为用户有可能连续点击重置密码多次
     * @param memberId
     * @return
     */
    @Query("select safeKey from SafeKey safeKey where safeKey.member.id = :memberId")
    public List<SafeKey> findByMemberId(@Param("memberId") String memberId);

}

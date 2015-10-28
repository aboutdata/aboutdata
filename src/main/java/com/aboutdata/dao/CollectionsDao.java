/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.domain.Collections;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 收藏夹 DAO
 *
 * @author Administrator
 */
@Repository
public interface CollectionsDao extends JpaRepository<Collections, String> {

    @Query("select obj from Collections obj where obj.member.id =:memberId order by obj.createDate asc")
    public List<Collections> findByMember(@Param("memberId") String memberId);

    @Query("select obj from Collections obj where obj.member.id =:memberId and obj.isDefault=true order by obj.createDate asc")
    public Collections findByMemberAndDefault(@Param("memberId") String memberId);
}

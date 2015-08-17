package com.aboutdata.dao;

import com.aboutdata.domain.MemberRank;
import java.math.BigDecimal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * Dao - 会员等级
 *
 *
 *
 */
@Repository
public interface MemberRankDao extends JpaRepository<MemberRank, Long> {

    /**
     * 判断名称是否存在
     *
     * @param name 名称(忽略大小写)
     * @return 名称是否存在
     */
    @Query("select count(*) from MemberRank memberRank where lower(memberRank.name) = lower(:name)")
    boolean nameExists(@Param("name") String name);

    /**
     * 判断消费金额是否存在
     *
     * @param amount 消费金额
     * @return 消费金额是否存在
     */
    @Query("select count(*) from MemberRank memberRank where memberRank.amount = :amount")
    boolean amountExists(@Param("amount") BigDecimal amount);

    /**
     * 查找默认会员等级
     *
     * @return 默认会员等级，若不存在则返回null
     */
    @Query("select memberRank from MemberRank memberRank where memberRank.isDefault = true")
    MemberRank findDefault();

    /**
     * 根据消费金额查找符合此条件的最高会员等级
     *
     * @param amount 消费金额
     * @return 会员等级，不包含特殊会员等级，若不存在则返回null
     */
    @Query("select memberRank from MemberRank memberRank where memberRank.isSpecial = false and memberRank.amount <= :amount order by memberRank.amount desc")
    MemberRank findByAmount(@Param("amount") BigDecimal amount);

}

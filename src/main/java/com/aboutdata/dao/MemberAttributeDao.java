package com.aboutdata.dao;

import com.aboutdata.domain.MemberAttribute;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Dao - 会员注册项
 *
 *
 *
 */
@Repository
public interface MemberAttributeDao extends JpaRepository<MemberAttribute, String> {

    /**
     * 查找已启用会员注册项
     *
     * @return 已启用会员注册项
     */
    @Query("select memberAttribute from MemberAttribute memberAttribute where memberAttribute.isEnabled = true order by memberAttribute.order asc")
    List<MemberAttribute> findList();

}

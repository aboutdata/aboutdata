package com.aboutdata.dao;

import com.aboutdata.domain.MemberAttribute;
import java.util.List;

/**
 * Dao - 会员注册项
 * 
 * 
 * 
 */
public interface MemberAttributeDao extends BaseDao<MemberAttribute, Long> {

	/**
	 * 查找未使用的对象属性序号
	 * 
	 * @return 未使用的对象属性序号，若无可用序号则返回null
	 */
	Integer findUnusedPropertyIndex();

	/**
	 * 查找已启用会员注册项
	 * 
	 * @return 已启用会员注册项
	 */
	List<MemberAttribute> findList();

}
package com.aboutdata.service;

import com.aboutdata.domain.MemberAttribute;
import java.util.List;

/**
 * Service - 会员注册项
 * 
 * 
 * 
 */
public interface MemberAttributeService {


	/**
	 * 查找会员注册项
	 * 
	 * @return 会员注册项，仅包含已启用会员注册项
	 */
	List<MemberAttribute> findList();

	/**
	 * 查找会员注册项(缓存)
	 * 
	 * @param cacheRegion
	 *            缓存区域
	 * @return 会员注册项(缓存)，仅包含已启用会员注册项
	 */
	List<MemberAttribute> findList(String cacheRegion);

}
package com.aboutdata.service;

import com.aboutdata.domain.MemberRank;
import java.math.BigDecimal;


/**
 * Service - 会员等级
 * 
 * 
 * 
 */
public interface MemberRankService extends BaseService<MemberRank, Long> {

	/**
	 * 判断名称是否存在
	 * 
	 * @param name
	 *            名称(忽略大小写)
	 * @return 名称是否存在
	 */
	boolean nameExists(String name);

	/**
	 * 判断名称是否唯一
	 * 
	 * @param previousName
	 *            修改前名称(忽略大小写)
	 * @param currentName
	 *            当前名称(忽略大小写)
	 * @return 名称是否唯一
	 */
	boolean nameUnique(String previousName, String currentName);

	/**
	 * 判断消费金额是否存在
	 * 
	 * @param amount
	 *            消费金额
	 * @return 消费金额是否存在
	 */
	boolean amountExists(BigDecimal amount);

	/**
	 * 判断消费金额是否唯一
	 * 
	 * @param previousAmount
	 *            修改前消费金额
	 * @param currentAmount
	 *            当前消费金额
	 * @return 消费金额是否唯一
	 */
	boolean amountUnique(BigDecimal previousAmount, BigDecimal currentAmount);

	/**
	 * 查找默认会员等级
	 * 
	 * @return 默认会员等级，若不存在则返回null
	 */
	MemberRank findDefault();

	/**
	 * 根据消费金额查找符合此条件的最高会员等级
	 * 
	 * @param amount
	 *            消费金额
	 * @return 会员等级，不包含特殊会员等级，若不存在则返回null
	 */
	MemberRank findByAmount(BigDecimal amount);

}
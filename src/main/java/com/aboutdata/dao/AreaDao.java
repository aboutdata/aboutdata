package com.aboutdata.dao;

import com.aboutdata.domain.Area;
import java.util.List;

/**
 * Dao - 地区
 * 
 * 
 * 
 */
public interface AreaDao extends BaseDao<Area, Long> {

	/**
	 * 查找顶级地区
	 * 
	 * @param count
	 *            数量
	 * @return 顶级地区
	 */
	List<Area> findRoots(Integer count);

}
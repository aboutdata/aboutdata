package com.aboutdata.service;

import com.aboutdata.domain.Area;
import java.util.List;

/**
 * Service - 地区
 *
 *
 *
 */
public interface AreaService {

    /**
     * 查找顶级地区
     *
     * @return 顶级地区
     */
    List<Area> findRoots();
}

package com.aboutdata.dao;

import com.aboutdata.domain.Area;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Dao - 地区
 *
 *
 *
 */
@Repository
public interface AreaDao extends JpaRepository<Area, Long> {

    /**
     * 查找顶级地区
     *
     * @param count 数量
     * @return 顶级地区
     */
    @Query("select area from Area area where area.parent is null order by area.order asc")
    List<Area> findRoots();

}

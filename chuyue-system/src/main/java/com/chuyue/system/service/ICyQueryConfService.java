package com.chuyue.system.service;

import com.chuyue.system.domain.CyQueryConf;
import java.util.List;

/**
 * 报表配置实体Service接口
 * 
 * @author chuyue
 * @date 2019-10-28
 */
public interface ICyQueryConfService 
{
    /**
     * 查询报表配置实体
     * 
     * @param reportId 报表配置实体ID
     * @return 报表配置实体
     */
    public CyQueryConf selectCyQueryConfById(Long reportId);

    /**
     * 查询报表配置实体列表
     * 
     * @param cyQueryConf 报表配置实体
     * @return 报表配置实体集合
     */
    public List<CyQueryConf> selectCyQueryConfList(CyQueryConf cyQueryConf);

    /**
     * 新增报表配置实体
     * 
     * @param cyQueryConf 报表配置实体
     * @return 结果
     */
    public int insertCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 修改报表配置实体
     * 
     * @param cyQueryConf 报表配置实体
     * @return 结果
     */
    public int updateCyQueryConf(CyQueryConf cyQueryConf);

    /**
     * 批量删除报表配置实体
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCyQueryConfByIds(String ids);

    /**
     * 删除报表配置实体信息
     * 
     * @param reportId 报表配置实体ID
     * @return 结果
     */
    public int deleteCyQueryConfById(Long reportId);
}

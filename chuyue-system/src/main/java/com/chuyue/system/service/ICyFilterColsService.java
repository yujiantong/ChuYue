package com.chuyue.system.service;

import com.chuyue.system.domain.CyFilterCols;
import java.util.List;

/**
 * 报过滤条件配置Service接口
 * 
 * @author chuyue
 * @date 2020-03-12
 */
public interface ICyFilterColsService 
{
    /**
     * 查询报过滤条件配置
     * 
     * @param fPkey 报过滤条件配置ID
     * @return 报过滤条件配置
     */
    public CyFilterCols selectCyFilterColsById(Long fPkey);

    /**
     * 查询报过滤条件配置列表
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 报过滤条件配置集合
     */
    public List<CyFilterCols> selectCyFilterColsList(CyFilterCols cyFilterCols);

    /**
     * 新增报过滤条件配置
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 结果
     */
    public int insertCyFilterCols(CyFilterCols cyFilterCols);

    /**
     * 修改报过滤条件配置
     * 
     * @param cyFilterCols 报过滤条件配置
     * @return 结果
     */
    public int updateCyFilterCols(CyFilterCols cyFilterCols);

    /**
     * 批量删除报过滤条件配置
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCyFilterColsByIds(String ids);

    /**
     * 删除报过滤条件配置信息
     * 
     * @param fPkey 报过滤条件配置ID
     * @return 结果
     */
    public int deleteCyFilterColsById(Long fPkey);
}

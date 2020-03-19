package com.chuyue.system.mapper;

import com.chuyue.system.domain.CyFilterCols;
import java.util.List;

/**
 * 报过滤条件配置Mapper接口
 * 
 * @author chuyue
 * @date 2020-03-12
 */
public interface CyFilterColsMapper 
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
     * 删除报过滤条件配置
     * 
     * @param fPkey 报过滤条件配置ID
     * @return 结果
     */
    public int deleteCyFilterColsById(Long fPkey);

    /**
     * 批量删除报过滤条件配置
     * 
     * @param fPkeys 需要删除的数据ID
     * @return 结果
     */
    public int deleteCyFilterColsByIds(String[] fPkeys);
}

package com.chuyue.system.service;

import com.chuyue.system.domain.CyShowCols;
import java.util.List;

/**
 * 报显示字段配置Service接口
 * 
 * @author chuyue
 * @date 2020-07-31
 */
public interface ICyShowColsService 
{
    /**
     * 查询报显示字段配置
     * 
     * @param id 报显示字段配置ID
     * @return 报显示字段配置
     */
    public CyShowCols selectCyShowColsById(Long id);

    /**
     * 查询报显示字段配置列表
     * 
     * @param cyShowCols 报显示字段配置
     * @return 报显示字段配置集合
     */
    public List<CyShowCols> selectCyShowColsList(CyShowCols cyShowCols);

    /**
     * 新增报显示字段配置
     * 
     * @param cyShowCols 报显示字段配置
     * @return 结果
     */
    public int insertCyShowCols(CyShowCols cyShowCols);

    /**
     * 修改报显示字段配置
     * 
     * @param cyShowCols 报显示字段配置
     * @return 结果
     */
    public int updateCyShowCols(CyShowCols cyShowCols);

    /**
     * 批量删除报显示字段配置
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteCyShowColsByIds(String ids);

    /**
     * 删除报显示字段配置信息
     * 
     * @param id 报显示字段配置ID
     * @return 结果
     */
    public int deleteCyShowColsById(Long id);
}

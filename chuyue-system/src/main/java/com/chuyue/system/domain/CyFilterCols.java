package com.chuyue.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.chuyue.common.annotation.Excel;
import com.chuyue.common.core.domain.BaseEntity;

/**
 * 报过滤条件配置对象 cy_filter_cols
 * 
 * @author chuyue
 * @date 2020-03-13
 */
public class CyFilterCols extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 字段 */
    @Excel(name = "字段")
    private String col;

    /** 字段名称 */
    @Excel(name = "字段名称")
    private String colName;

    /** 所属报表 */
    @Excel(name = "所属报表")
    private String code;

    /** 过滤条件 */
    @Excel(name = "过滤条件")
    private String filter;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCol(String col) 
    {
        this.col = col;
    }

    public String getCol() 
    {
        return col;
    }
    public void setColName(String colName) 
    {
        this.colName = colName;
    }

    public String getColName() 
    {
        return colName;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }
    public void setFilter(String filter) 
    {
        this.filter = filter;
    }

    public String getFilter() 
    {
        return filter;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("col", getCol())
            .append("colName", getColName())
            .append("code", getCode())
            .append("filter", getFilter())
            .append("remarks", getRemarks())
            .toString();
    }
}

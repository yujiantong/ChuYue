package com.chuyue.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.chuyue.common.annotation.Excel;
import com.chuyue.common.core.domain.BaseEntity;

/**
 * 报显示字段配置对象 cy_show_cols
 * 
 * @author chuyue
 * @date 2020-07-31
 */
public class CyShowCols extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 显示列 */
    @Excel(name = "显示列")
    private String col;

    /** 显示名称 */
    @Excel(name = "显示名称")
    private String colName;

    /** 所属表 */
    @Excel(name = "所属表")
    private String code;

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
            .append("remarks", getRemarks())
            .toString();
    }
}

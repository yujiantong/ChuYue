package com.chuyue.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.chuyue.common.annotation.Excel;
import com.chuyue.common.core.domain.BaseEntity;

/**
 * 报表配置实体对象 cy_query_conf
 * 
 * @author chuyue
 * @date 2019-10-28
 */
public class CyQueryConf extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long reportId;

    /** 业务编码 */
    @Excel(name = "业务编码")
    private String reportCode;

    /** 描述 */
    @Excel(name = "描述")
    private String reportDesc;

    /** 查询sql */
    @Excel(name = "查询sql")
    private String sqlText;

    public void setReportId(Long reportId) 
    {
        this.reportId = reportId;
    }

    public Long getReportId() 
    {
        return reportId;
    }
    public void setReportCode(String reportCode) 
    {
        this.reportCode = reportCode;
    }

    public String getReportCode() 
    {
        return reportCode;
    }
    public void setReportDesc(String reportDesc) 
    {
        this.reportDesc = reportDesc;
    }

    public String getReportDesc() 
    {
        return reportDesc;
    }
    public void setSqlText(String sqlText) 
    {
        this.sqlText = sqlText;
    }

    public String getSqlText() 
    {
        return sqlText;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("reportId", getReportId())
            .append("reportCode", getReportCode())
            .append("reportDesc", getReportDesc())
            .append("sqlText", getSqlText())
            .append("createTime", getCreateTime())
            .toString();
    }
}

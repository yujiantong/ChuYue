package com.chuyue.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.chuyue.common.annotation.Excel;
import com.chuyue.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 cy_query_conf
 *
 * @author chuyue
 * @date 2019-10-25
 */
public class CyQueryConf extends BaseEntity
{
	private static final long serialVersionUID = 1L;

	/** 主键 */
	private Long fPkey;

	/** 业务编码 */
	@Excel(name = "业务编码")
	private String fReportCode;

	/** 描述 */
	@Excel(name = "描述")
	private String fDesc;

	/** 查询sql */
	@Excel(name = "查询sql")
	private String fSqltext;

	/** 创建时间 */
	@Excel(name = "创建时间")
	private String fCreatetime;

	public void setFPkey(Long fPkey)
	{
		this.fPkey = fPkey;
	}

	public Long getFPkey()
	{
		return fPkey;
	}
	public void setFReportCode(String fReportCode)
	{
		this.fReportCode = fReportCode;
	}

	public String getFReportCode()
	{
		return fReportCode;
	}
	public void setFDesc(String fDesc)
	{
		this.fDesc = fDesc;
	}

	public String getFDesc()
	{
		return fDesc;
	}
	public void setFSqltext(String fSqltext)
	{
		this.fSqltext = fSqltext;
	}

	public String getFSqltext()
	{
		return fSqltext;
	}
	public void setFCreatetime(String fCreatetime)
	{
		this.fCreatetime = fCreatetime;
	}

	public String getFCreatetime()
	{
		return fCreatetime;
	}
	public Long getfPkey() {
		return fPkey;
	}

	public void setfPkey(Long fPkey) {
		this.fPkey = fPkey;
	}

	public String getfReportCode() {
		return fReportCode;
	}

	public void setfReportCode(String fReportCode) {
		this.fReportCode = fReportCode;
	}

	public String getfDesc() {
		return fDesc;
	}

	public void setfDesc(String fDesc) {
		this.fDesc = fDesc;
	}

	public String getfSqltext() {
		return fSqltext;
	}

	public void setfSqltext(String fSqltext) {
		this.fSqltext = fSqltext;
	}

	public String getfCreatetime() {
		return fCreatetime;
	}

	public void setfCreatetime(String fCreatetime) {
		this.fCreatetime = fCreatetime;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
				.append("fPkey", getFPkey())
				.append("fReportCode", getFReportCode())
				.append("fDesc", getFDesc())
				.append("fSqltext", getFSqltext())
				.append("fCreatetime", getFCreatetime())
				.toString();
	}
}

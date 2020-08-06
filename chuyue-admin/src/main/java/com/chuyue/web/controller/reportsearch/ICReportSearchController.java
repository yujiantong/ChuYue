package com.chuyue.web.controller.reportsearch;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.io.IORuntimeException;
import cn.hutool.core.io.IoUtil;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.chuyue.common.annotation.Log;
import com.chuyue.common.config.Global;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.core.page.TableDataInfo;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.common.exception.BusinessException;
import com.chuyue.common.utils.sql.SqlUtil;
import com.chuyue.system.domain.SysConfig;
import com.chuyue.system.domain.SysMenu;
import com.chuyue.system.service.DBService;
import com.chuyue.system.service.ICReportSearchService;
import com.chuyue.system.service.ISysMenuService;
import com.chuyue.web.controller.tool.DBUtils;

import net.sf.json.JSONObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.*;


/**
 * 报表查询公共类
 * @author chuyue
 */
@Controller
@RequestMapping("/reportsearch")
public class ICReportSearchController extends BaseController {
    private static final Logger log = LoggerFactory.getLogger(com.chuyue.common.utils.poi.ExcelUtil.class);
    private static final String QUERY_CONF     = "select * from cy_query_conf where report_code";//配置报表信息的信息表
    private static final String SQLTEXT      = "sql_text";//对应的sql字段
    private static final String REPORTDESC     = "report_desc";//对应的sql字段
    private static final String SQL_VALUE      = "SQL_VALUE";//sql变量
    private static final String REPORT_CODE    = "REPORT_CODE";//前台传输过来的业务编码key
    private static final String REPORT_FILTER  = "REPORT_FILTER";//过滤参数key
    private String prefix = "";
    @Autowired
    private ICReportSearchService searchService;
    @Autowired
    private ISysMenuService menuService;
    @Autowired
    private DBService dbService;
    
    @RequiresPermissions("reportsearch")
    @GetMapping()
    public String reportsearch(HttpServletRequest request) {
        String viewurl = "";
        String url = request.getParameter("url");
        prefix = url.substring(1, url.length());
        String businessCode = request.getParameter("code");
        if (!"".equals(businessCode)) {
            SysMenu sysMenu = menuService.selectPermsByCode(businessCode);
            viewurl = sysMenu.getBusinessCode();
        }

        return prefix + "/" + viewurl;
    }

    @RequiresPermissions("reportsearch")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestParam(name = "CONDITION") String CONDITION) {
    	JSONObject jsonobject = JSONObject.fromObject(CONDITION);
        Map<String,Object> map = selectReport(jsonobject);
        List<Map<String,Object>> list = (List<Map<String, Object>>) map.get("searchList");
        return getDataTable(list);
    }

    @RequiresPermissions("reportsearch")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(@RequestParam(name = "CONDITION") String CONDITION) {
        ExcelWriter      writer   = null;
        String fileName           = "";
        try {
            //获取数据
        	JSONObject jsonobject = JSONObject.fromObject(CONDITION);
            Map<String,Object> map = selectReport(jsonobject);
            @SuppressWarnings("unchecked")
			ArrayList<Map<String,Object>> rows = (ArrayList<Map<String, Object>>) map.get("searchList");
            fileName = UUID.randomUUID().toString() + "_" +map.get("reportDesc").toString() + ".xlsx";
            String filePath = Global.getDownloadPath() + fileName;
            
            writer = ExcelUtil.getWriter(filePath);
            
            String querysql = "select * from cy_show_cols where code=?";
            String code = jsonobject.get("REPORT_CODE").toString();
            List<Map<String,Object>> list = dbService.QuerySql(SqlUtil.ChangeSql(querysql, new String[]{code}));
            for (int i = 0; i < list.size(); i++) {
            	JSONObject obj = JSONObject.fromObject(list.get(i));
            	//自定义标题别名
            	writer.addHeaderAlias(obj.getString("col"), obj.getString("col_name"));
			}
            writer.write(rows, true);
            writer.close();
        } catch (Exception e) {
            log.error("导出Excel异常{}", e.getMessage());
            throw new BusinessException("导出Excel失败，请联系管理员！");
        }
        return AjaxResult.success(fileName);
    }

    /**
     * 查询和导出通用方法
     * @param jsonobject2
     * @return
     */
    private Map<String,Object> selectReport(JSONObject jsonobject) {
        Map<String,Object> resMap = new HashMap<>();
        List<Map<String,Object>> list = null;
        //查询表 cy_query_conf 中业务编码对应的sqltext
        String code = jsonobject.getString(REPORT_CODE);
        String sqltext = QUERY_CONF+" = '"+code+"'";
        Map<String,Object> conf = searchService.selectQueryConf(sqltext);
        startPage();
        if(!"".equals(conf.get(SQLTEXT))){
            String report_sqltext = conf.get(SQLTEXT).toString()+" where 1=1 ";
            //处理过滤条件
            String filters = jsonobject.getString(REPORT_FILTER);
            String[] arr = filters.split(",");
            StringBuffer buffer = new StringBuffer();
            for(int i=0;i<arr.length;i++){
                String filterName = "";
                if(jsonobject.containsKey(arr[i])){
                    filterName = arr[i];
                }
                if(jsonobject.containsKey(filterName)){
                	if(jsonobject.getString(filterName) !=null && !"".equals(jsonobject.getString(filterName))){
                        buffer.append("and").append(" ").append(filterName).append("=").append(""+jsonobject.getString(filterName)).append(" ");
                    }
                }
            }
            jsonobject.put(SQL_VALUE,report_sqltext+buffer);
            list = searchService.selectReportList(jsonobject);
            resMap.put("searchList",list);
        }
        resMap.put("reportDesc",conf.get(REPORTDESC));
        return  resMap;
    }
}

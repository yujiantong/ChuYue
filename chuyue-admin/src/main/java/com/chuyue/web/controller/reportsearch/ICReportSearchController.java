package com.chuyue.web.controller.reportsearch;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.chuyue.common.annotation.Log;
import com.chuyue.common.core.controller.BaseController;
import com.chuyue.common.core.domain.AjaxResult;
import com.chuyue.common.core.page.TableDataInfo;
import com.chuyue.common.enums.BusinessType;
import com.chuyue.system.domain.SysMenu;
import com.chuyue.system.service.ICReportSearchService;
import com.chuyue.system.service.ISysMenuService;
import net.sf.json.JSONObject;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 报表查询公共类
 * @author chuyue
 */
@Controller
@RequestMapping("/reportsearch")
public class ICReportSearchController extends BaseController {
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
        Map<String,Object> map = selectReport(CONDITION);
        List<Map<String,Object>> list = (List<Map<String, Object>>) map.get("searchList");
        return getDataTable(list);
    }

    @RequiresPermissions("reportsearch")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(@RequestParam(name = "CONDITION") String CONDITION) {
        Map<String,Object> map = selectReport(CONDITION);
        List<Map<String,Object>> list = (List<Map<String, Object>>) map.get("searchList");
        ArrayList<Map<String,Object>> rows = (ArrayList<Map<String, Object>>) list;
        // 通过工具类创建writer
        ExcelWriter writer = ExcelUtil.getWriter("");
        // 合并单元格后的标题行，使用默认标题样式
        writer.merge(rows.get(0).size() - 1, map.get("reportDesc"));
        // 一次性写出内容，使用默认样式，强制输出标题
        writer.write(rows, true);
        // 关闭writer，释放内存
        writer.close();
        //return util.exportExcel(list, "登陆日志");
        return null;
    }

    /**
     * 查询和导出通用方法
     * @param CONDITION
     * @return
     */
    private Map<String,Object> selectReport(String CONDITION) {
        Map<String,Object> resMap = new HashMap<>();
        JSONObject jsonobject = JSONObject.fromObject(CONDITION);
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

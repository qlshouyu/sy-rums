<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>

package ${basepackage}.${subpackage}.feign;
import ${basepackage}.${subpackage}.model.${classNameLower}.*;

import com.qlshouyu.jframework.core.models.Page;
import com.qlshouyu.jframework.web.ResponseResult;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.cloud.openfeign.SpringQueryMap;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * ${table.remarks}
 *
 * @author 高露 邮箱：<a href="egojit@qq.com">egojit@qq.com</a>
 * @since @datetime
 */
@FeignClient(value = "scv-${subpackage}")
public interface ${className}ServiceApi {

    /**
     * 列表
     *
     * @param searchVo 搜索条件
     * @return　返回信息
     */
    @RequestMapping(method = RequestMethod.GET, value = "/api/${api_version}/${subpackage}/${classNameLower}")
    ResponseResult<Page<${className}ListVo>> list(${className}SearchVo searchVo);

    /**
     * 添加
     *
     * @param addVo
     * @return
     */
    @RequestMapping(method = RequestMethod.POST, value = "/api/${api_version}/${subpackage}/${classNameLower}")
    ResponseResult<${className}AddVo> add(@RequestBody ${className}AddVo addVo);

    /**
     * 修改
     *
     * @param updateVo 修改对象
     * @return 返回修改对象
     */
    @RequestMapping(method = RequestMethod.PUT, value = "/api/${api_version}/${subpackage}/${classNameLower}")
    ResponseResult<${className}UpdateVo> update(@RequestBody ${className}UpdateVo updateVo);


    /**
     * 详情
     *
     * @param id ID
     * @return 详细信息
     */
    @RequestMapping(method = RequestMethod.GET, value = "/api/${api_version}/${subpackage}/${classNameLower}/{id}")
    ResponseResult<${className}DetailVo> detail(@PathVariable(name = "id") String id);


    /**
     * 删除
     */
    @RequestMapping(method = RequestMethod.DELETE, value = "/api/${api_version}/${subpackage}/${classNameLower}/{ids}")
    ResponseResult<String> delete(@RequestBody List<String> ids);
}

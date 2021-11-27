<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${subpackage}.model.${classNameLower};

import com.qlshouyu.jframework.core.models.VoEntity;
import javax.validation.constraints.NotBlank;
import io.swagger.annotations.ApiModelProperty;
/**
 * ${table.remarks}
 */
public class ${className}ListVo extends VoEntity{
    private static final long serialVersionUID = 1L;
  <#list table.columns as column>
    <#if !column.pk>
    // ${column.columnAlias}
    private ${column.simpleJavaType} ${column.columnNameLower};
    </#if>
	</#list>
  
  <#list table.columns as column>
    <#if !column.pk>
    public void set${column.columnName}(${column.simpleJavaType} value) {
      this.${column.columnNameLower} = value;
    }
    public ${column.simpleJavaType} get${column.columnName}() {
      return this.${column.columnNameLower};
    }
    </#if>
	</#list>
}
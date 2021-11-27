<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.domain.entity;

import java.io.Serializable;
import javax.annotation.Generated;
import com.shouyu.dframework.entity.Entity;

public class ${className} extends Entity{
    private static final long serialVersionUID = 1L;
    
  <#list table.columns as column>
    // ${column.columnAlias}
    private ${column.simpleJavaType} ${column.columnNameLower};
    public void set${column.columnName}(${column.simpleJavaType} value) {
      this.${column.columnNameLower} = value;
    }
    public ${column.simpleJavaType} get${column.columnName}() {
      return this.${column.columnNameLower};
    }
	</#list>
}
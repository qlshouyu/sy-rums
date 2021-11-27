<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>

package ${basepackage}.${package_pre}${subpackage}.interfaces;

import  ${basepackage}.${package_pre}${subpackage}.domain.entity.${className};
import com.shouyu.dframework.respository.Page;

public interface ${className}Interface {
  
}
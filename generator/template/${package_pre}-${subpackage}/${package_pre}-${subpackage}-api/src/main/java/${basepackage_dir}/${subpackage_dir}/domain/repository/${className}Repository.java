<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.domain.repository;

import com.shouyu.dframework.respository.Repository;
import ${basepackage}.${package_pre}${subpackage}.domain.entity.${className};

public interface ${className}Repository extends Repository<String, ${className}>{

}
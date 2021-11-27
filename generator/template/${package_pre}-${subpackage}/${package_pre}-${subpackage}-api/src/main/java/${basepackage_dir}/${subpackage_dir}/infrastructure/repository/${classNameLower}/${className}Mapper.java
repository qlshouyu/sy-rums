<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.infrastructure.repository.${className};

import ${basepackage}.${package_pre}${subpackage}.domain.entity.${className};
import com.shouyu.dframework.infrastructure.repository.mysql.MybatisMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ${className}Mapper extends MybatisMapper<String, ${className}> {
}
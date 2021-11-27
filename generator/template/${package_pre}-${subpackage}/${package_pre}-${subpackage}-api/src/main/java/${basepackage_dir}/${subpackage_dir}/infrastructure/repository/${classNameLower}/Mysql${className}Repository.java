<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.infrastructure.repository.${className};

import ${basepackage}.${package_pre}${subpackage}.domain.entity.${className};
import ${basepackage}.${package_pre}${subpackage}.domain.repository.${className}Repository;
import com.shouyu.dframework.infrastructure.repository.mysql.AbstractMysqlRepository;
import org.springframework.stereotype.Component;

/**
 * mysql版本账户仓库
 */
@Component
public class Mysql${className}Repository extends AbstractMysqlRepository<${className}, ${className}Mapper> implements ${className}Repository {
    public Mysql${className}Repository(${className}Mapper mapper) {
        super(mapper);
    }
}
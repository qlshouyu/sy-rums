<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.infrastructure.controller;

import ${basepackage}.${package_pre}${subpackage}.infrastructure.repository.${classNameLower}.${className}Example;
import ${basepackage}.${package_pre}${subpackage}.domain.entity.${className};
import ${basepackage}.${package_pre}${subpackage}.domain.repository.${className}Repository;
import ${basepackage}.${package_pre}${subpackage}.interfaces.${className}Interface;
import com.shouyu.dframework.respository.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/${api_version}/${subpackage}/${classNameLower}")
public interface ${className}Service implements ${className}Interface  {
  private final static Logger LOGGER= LoggerFactory.getLogger(${className}Controller.class);

  @Autowired
  private ${className}Service ${classNameLower}Service;
}
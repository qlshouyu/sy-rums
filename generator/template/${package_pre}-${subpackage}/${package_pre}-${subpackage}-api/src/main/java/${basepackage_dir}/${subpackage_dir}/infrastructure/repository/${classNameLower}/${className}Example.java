<#include "/java_copyright.include">
<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign shortName = table.shortName>
package ${basepackage}.${package_pre}${subpackage}.infrastructure.repository.${className};
import com.shouyu.dframework.respository.criteria.AbstractCriteria;
import com.shouyu.dframework.respository.criteria.PageExample;
import java.util.List;

public class ${className}Example extends PageExample<${className}Example.${className}Criteria> {
  public static class ${className}Criteria extends AbstractCriteria {
    <#list table.columns as column>
    public AbstractCriteria and${column.columnName}IsNull() {
      addCriterion("${column.sqlName} is null");
      return this;
    }
    public AbstractCriteria and${column.columnName}IsNotNull() {
      addCriterion("${column.sqlName} is not null");
      return this;
    }
    public AbstractCriteria and${column.columnName}EqualTo(String value) {
        addCriterion("${column.sqlName} =", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}NotEqualTo(String value) {
        addCriterion("${column.sqlName} <>", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}GreaterThan(String value) {
        addCriterion("${column.sqlName} >", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}GreaterThanOrEqualTo(String value) {
        addCriterion("${column.sqlName} >=", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}LessThan(String value) {
        addCriterion("${column.sqlName} <", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}LessThanOrEqualTo(String value) {
        addCriterion("${column.sqlName} <=", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}Like(String value) {
        addCriterion("${column.sqlName} like", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}NotLike(String value) {
        addCriterion("${column.sqlName} not like", value, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}In(List<String> values) {
        addCriterion("${column.sqlName} in", values, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}NotIn(List<String> values) {
        addCriterion("${column.sqlName} not in", values, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}Between(String value1, String value2) {
        addCriterion("${column.sqlName} between", value1, value2, "${column.columnNameLower}");
        return this;
    }
    public AbstractCriteria and${column.columnName}NotBetween(String value1, String value2) {
        addCriterion("${column.sqlName} not between", value1, value2, "${column.columnNameLower}");
        return this;
    }
    </#list>
  }
}
<#include "/java_copyright.include">
<#assign serviceName = subpackage?cap_first>
package ${basepackage}.${subpackage};

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
@SpringBootApplication
@EnableDiscoveryClient
public class ${serviceName}Application {

    public static void main(String[] args) {
        SpringApplication.run(${serviceName}Application.class, args);
    }

}

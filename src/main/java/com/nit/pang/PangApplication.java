package com.nit.pang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
//@MapperScan("com.nit.pang.model.repository")
//@EnableCaching
public class PangApplication extends SpringBootServletInitializer {
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(PangApplication.class);
	}
    public static void main(String[] args) {
        SpringApplication.run(PangApplication.class, args);
    }
}

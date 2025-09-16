package com.example.javamainservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class JavaMainServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(JavaMainServiceApplication.class, args);
    }

}

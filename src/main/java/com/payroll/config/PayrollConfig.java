package com.payroll.config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"com.payroll"})
@EnableWebMvc
public class PayrollConfig implements WebMvcConfigurer {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/View/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry
		.addResourceHandler("/URLToResources/**")
		.addResourceLocations("/resources");
	}
	
	@Bean
	public JdbcTemplate jdbcTemplate() {
		
		JdbcTemplate jdbcTemplate= new JdbcTemplate(dataSource());
		
		return jdbcTemplate;
	}
	
	
	@Bean
	public DataSource dataSource() {
		
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		dataSource.setUsername("system");
		dataSource.setPassword("orcl");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:orcl");
		dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		return dataSource;
	}
	
	//creating a bean for passwordEncoder
	@Bean
	PasswordEncoder passwordEncoder() {
		
		return new BCryptPasswordEncoder();
	}
	
}

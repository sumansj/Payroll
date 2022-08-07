package com.payroll.config;

import java.security.Principal;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity(debug=true)
public class PayrollSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private DataSource dataSource;
	
	private Principal principal;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		
		auth
		.jdbcAuthentication()
		.passwordEncoder(passwordEncoder)		//to fetch bcrypt format password
		.dataSource(dataSource);					//to connect to data base
//		.usersByUsernameQuery("select username,password,enabled from users where username=?")			//to extract ddetails from ysers table
//		.authoritiesByUsernameQuery("select username,role from users where username=?");				//to extract role from users table
	}
//	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		
		http
		.authorizeRequests()
		.antMatchers("/").authenticated()
		
		//to set access to only admin
		.antMatchers("/add").hasAuthority("Admin")
		.antMatchers("/admin").hasAuthority("Admin")
		.antMatchers("/save").hasAuthority("Admin")
		.antMatchers("/thankyou").hasAuthority("Admin")
		.antMatchers("/empReports").hasAuthority("Admin")
		.antMatchers("/update").hasAuthority("Admin")
		.antMatchers("/success").hasAuthority("Admin")
		.antMatchers("/addSalary").hasAuthority("Admin")
		.antMatchers("/saveSalary").hasAuthority("Admin")
		.antMatchers("/salaryReports").hasAuthority("Admin")
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/login").permitAll()
		.and()
		.csrf().disable()			//if not disabling csrf then will get 403 error
		.httpBasic()
		.and()
		.logout().permitAll()
		.and().exceptionHandling().accessDeniedPage("/access");
	}
	
	
	
}

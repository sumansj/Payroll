package com.payroll.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class PayrollAppInitilizer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		Class[] configfiles = {PayrollConfig.class};
		
		return configfiles;
	}

	@Override
	protected String[] getServletMappings() {
		
		String [] mappings = {"/"};
		
		return mappings;
	}

}

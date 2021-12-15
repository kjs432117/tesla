package com.tesla.control;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/CharsetFilter")
public class CharsetFilter implements Filter {

    
    public CharsetFilter() {
       
    }

	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("doFilter() before");
		chain.doFilter(request, response); //서블릿 실행
		System.out.println("doFilter() after");
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("init()");
	}

}

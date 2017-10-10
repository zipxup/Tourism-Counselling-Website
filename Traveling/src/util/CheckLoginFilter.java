package util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckLoginFilter implements Filter {// 过滤器

	public void init(FilterConfig filterConfig) throws ServletException {
		System.err.println("Traveling初始化过滤器...");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// 获得在下面代码中要用的request,response,session对象
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();
		// 获取绝对路径
		String pathh = servletRequest.getContextPath();
		String basePath = servletRequest.getScheme() + "://"
				+ servletRequest.getServerName() + ":"
				+ servletRequest.getServerPort() + pathh + "/";
		// 获得用户请求的URI
		String path = servletRequest.getRequestURI();
		System.err.println(path);

		// 从session里取用户信息

		// 登陆页面无需过滤
		if (path.indexOf(basePath + "jsp/login.jsp") > -1) {
			System.err.println(basePath);
			chain.doFilter(servletRequest, servletResponse);
			return;
		}

		String username = (String) session.getAttribute("name");

		// 判断如果没有取到用户信息,就跳转到登陆页面
		if (username == null || "".equals(username)) {
			// 跳转到登陆页面
			servletResponse.sendRedirect(basePath + "jsp/login.jsp");
		} else {
			// 已经登陆,继续此次请求
			chain.doFilter(request, response);
		}

	}

	public void destroy() {
		System.err.println("Travel销毁过滤器...");
	}

}
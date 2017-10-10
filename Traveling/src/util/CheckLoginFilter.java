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

public class CheckLoginFilter implements Filter {// ������

	public void init(FilterConfig filterConfig) throws ServletException {
		System.err.println("Traveling��ʼ��������...");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// ��������������Ҫ�õ�request,response,session����
		HttpServletRequest servletRequest = (HttpServletRequest) request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;
		HttpSession session = servletRequest.getSession();
		// ��ȡ����·��
		String pathh = servletRequest.getContextPath();
		String basePath = servletRequest.getScheme() + "://"
				+ servletRequest.getServerName() + ":"
				+ servletRequest.getServerPort() + pathh + "/";
		// ����û������URI
		String path = servletRequest.getRequestURI();
		System.err.println(path);

		// ��session��ȡ�û���Ϣ

		// ��½ҳ���������
		if (path.indexOf(basePath + "jsp/login.jsp") > -1) {
			System.err.println(basePath);
			chain.doFilter(servletRequest, servletResponse);
			return;
		}

		String username = (String) session.getAttribute("name");

		// �ж����û��ȡ���û���Ϣ,����ת����½ҳ��
		if (username == null || "".equals(username)) {
			// ��ת����½ҳ��
			servletResponse.sendRedirect(basePath + "jsp/login.jsp");
		} else {
			// �Ѿ���½,�����˴�����
			chain.doFilter(request, response);
		}

	}

	public void destroy() {
		System.err.println("Travel���ٹ�����...");
	}

}
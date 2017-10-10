package com.servlet;
/**
 * µÇÂ¼servlet
 * */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ILoginDAO;
import com.factory.LoginFactory;
import com.vo.UserManager;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		ILoginDAO iLoginDAO = LoginFactory.getLoginFactory();
		UserManager login = new UserManager();

		String account = request.getParameter("account");
		String password = request.getParameter("password");
		try {
			if (iLoginDAO.select(account, password)) {
				List list = null;
				try {
					list = iLoginDAO.login(account, password);
				} catch (Exception e) {
					e.printStackTrace();
				}
				UserManager login2 = (UserManager) list.get(0);
				request.getSession().setAttribute("account", login2.getAccount());
				request.getSession().setAttribute("name", login2.getName());

				response.sendRedirect("IndexServlet");
			} else {
				request.getRequestDispatcher("../jsp/sign/fail.jsp").forward(request, response);
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}
}

package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IAnnouncementDAO;
import com.factory.AnnouncementFactory;

/**
 * Servlet implementation class Aannouncement1Servlet
 */
public class Aannouncement1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Aannouncement1Servlet() {
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

		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String contrnt = request.getParameter("content");

		IAnnouncementDAO dao = AnnouncementFactory.getaAnnouncementFactory();
		if (dao.rester(name, title, contrnt)) {
			response.sendRedirect("AannouncementServlet");
		}
	}

}

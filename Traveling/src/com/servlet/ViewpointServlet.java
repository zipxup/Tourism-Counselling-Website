package com.servlet;
/**
 * 全部景点信息查询servlet
 * */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IViewpointDAO;
import com.factory.ViewpointFactory;

/**
 * Servlet implementation class ViewpointServlet
 */
public class ViewpointServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewpointServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		IViewpointDAO viewpointImpl = ViewpointFactory.getViewpointFactory();// 实例化实现接口类

		String value = request.getParameter("value");

		int ht = Integer.parseInt(value) * 4;
		System.out.println("记录数为" + (ht+1)+"--"+(ht+4));

		List list = null;
		try {
			list = viewpointImpl.selManager(ht);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("Viewpoint", list);
		request.setAttribute("value", value);
		request.getRequestDispatcher("../jsp/viewpoint/viewpoint.jsp").forward(
				request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}
}

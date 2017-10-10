package com.servlet;
/**
 * ��������ȫ����ѯservlet
 * */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ILeaveDAO;
import com.factory.LeaveFactory;
import com.vo.Leave;

/**
 * Servlet implementation class LeaveListServlet
 */
public class LeaveListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LeaveListServlet() {
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

		String spots_Id = (request.getParameter("spots_Id"));
		String number = request.getParameter("number");
		ILeaveDAO like = LeaveFactory.getleLeaveDAO();
		List list = null;
		try {
			list = like.select(Integer.parseInt(spots_Id), Integer.parseInt(number));
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("value", list);
		request.setAttribute("spots_Id", request.getParameter("spots_Id"));
		request.setAttribute("number", number);
		request.getRequestDispatcher("../jsp/viewpoint/leave.jsp").forward(
				request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

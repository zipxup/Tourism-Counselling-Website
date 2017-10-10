package com.servlet;
/**
 * æ∞µ„¡Ù—‘servlet
 * */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ILeaveDAO;
import com.factory.LeaveFactory;
import com.vo.Leave;

/**
 * Servlet implementation class LeaveInsertServlet
 */
public class LeaveInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LeaveInsertServlet() {
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

		Leave leave = new Leave();
		ILeaveDAO iLeaveDAO=LeaveFactory.getleLeaveDAO();
		
		String spots_Id = request.getParameter("spots_Id");
		String name="1";
		
		leave.setSpots_id(spots_Id);
		leave.setContent(request.getParameter("text"));
		leave.setName(name);
		leave.setTime(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()));
		
		try {
			if(iLeaveDAO.insert(leave)){
				response.sendRedirect("LeaveListServlet?spots_Id="+spots_Id+"&number=0");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

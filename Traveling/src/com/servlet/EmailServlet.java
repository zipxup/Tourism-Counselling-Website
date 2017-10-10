package com.servlet;

/**
 * 确认景点信息报名
 * */
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.IEmailDAO;
import com.dao.IViewpointDAO;
import com.factory.EmailFactory;
import com.factory.ViewpointFactory;
import common.DatabaseManager;

/**
 * Servlet implementation class EmailServlet
 */
public class EmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmailServlet() {
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

		String account = request.getParameter("account");
		String spots_Id = request.getParameter("spots_Id");

		DatabaseManager db = new DatabaseManager();

		String sql1 = "select spots_Id from number where spots_Id='" + spots_Id
				+ "' and account='" + account + "'";
		String sql2="insert into number(spots_Id,account,type) value('"
				+ spots_Id +"','" + account + "','0')";
		String sql3 = "select number,numbermax from scenic_spots_information where spots_Id='"
				+ spots_Id + "'";
		try {
			if (db.executeQuery(sql1).next()) {
				request.getRequestDispatcher("../jsp/sign/already.jsp").forward(request, response);
			} else {
				int number = 0;
				int numbermax = 0;
				ResultSet rs = db.executeQuery(sql3);
				if (rs.next()) {
					number = Integer.parseInt(rs.getString("number"));
					numbermax = Integer.parseInt(rs.getString("numbermax"));
				}
				number = Integer.parseInt(rs.getString("number"));
				number+=1;
				String sql4 = "update scenic_spots_information set number ='"+number+"' where spots_Id='"+ spots_Id + "'";
				if (number > numbermax) {
					request.getRequestDispatcher("../jsp/sign/max.jsp").forward(request, response);
				} else {
					db.executeUpdate(sql2);
					db.executeUpdate(sql4);
					request.getRequestDispatcher("../jsp/viewpoint/emil.jsp").forward(request, response);
				}
			}		
		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (Exception e1) {
			e1.printStackTrace();
		} finally {
			db.close();
		}
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

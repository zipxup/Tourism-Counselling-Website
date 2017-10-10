package com.servlet;
/**
 * 意见提交接口servlet
 * */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IMessageDAO;
import com.factory.MessageFactory;
import com.vo.Message;

/**
 * Servlet implementation class MessageServlet
 */
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MessageServlet() {
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

		IMessageDAO imessageDAO = MessageFactory.getMessageFactory();

		Message message = new Message();

		message.setName("1");
		message.setTitle(request.getParameter("title"));
		message.setContent(request.getParameter("content"));
		message.setTime(request.getParameter("time"));

		try {
			if (imessageDAO.insert(message)) {
				request.setAttribute("value", "信息留言成功,感谢您的留言!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("../jsp/message/message.jsp").forward(request, response);
	}

}

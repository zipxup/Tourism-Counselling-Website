package com.servlet;
/**
 * 首页随机显示servlet
 * */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IIndexSelectDAO;
import com.factory.Index_selectFactory;

import util.FileInput;

/**
 * Servlet implementation class IndexServlet
 */
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		FileInput fileInput=new FileInput();
		int number=fileInput.fileinput();
		System.out.println("首页显示输出的景点为"+number);
		
		IIndexSelectDAO like = Index_selectFactory.getViewpointFactory();
		List list=null;
		try {
			list=like.index_select(number);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("List", list);
		request.getRequestDispatcher("../jsp/adminaction.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

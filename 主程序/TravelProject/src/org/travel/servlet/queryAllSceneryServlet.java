package org.travel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.Scenery;
import org.travel.service.ISceneryService;
import org.travel.service.impl.SceneryServiceImpl;

public class queryAllSceneryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		/*
		 * String action = request.getParameter("action");
		 * if(action.equals("blog")){
		 * 
		 * } if(action.equals("")){
		 * 
		 * }
		 */
		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		ISceneryService sceneryService = new SceneryServiceImpl();
		List<Scenery> sceneries = sceneryService.queryAllScenery();

		request.setAttribute("sceneries", sceneries);

		switch (ch) {
		case 'Q':
			request.getRequestDispatcher("manage/scenery_man_indexQ.jsp")
					.forward(request, response);
			break;
		case 'I':
			request.getRequestDispatcher("manage/scenery_man_add.jsp").forward(
					request, response);
			break;
		case 'D':
			request.getRequestDispatcher("manage/scenery_man_indexD.jsp")
					.forward(request, response);
			break;
		case 'U':
			request.getRequestDispatcher("manage/scenery_man_indexU.jsp")
					.forward(request, response);
			break;
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

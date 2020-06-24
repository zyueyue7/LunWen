package org.travel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.RouteWeek;
import org.travel.service.IRouteWeekService;
import org.travel.service.impl.RouteWeekServiceImpl;

public class queryAllRouteWeekServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		IRouteWeekService routeWeekService = new RouteWeekServiceImpl();
		List<RouteWeek> routeWeeks = routeWeekService.queryAllRouteWeeks();

		request.setAttribute("routeWeeks", routeWeeks);
		switch (ch) {
		case 'Q':
			request.getRequestDispatcher("manage/routeweek_man_indexQ.jsp")
					.forward(request, response);
			break;
		case 'I':

			request.getRequestDispatcher("manage/routeweek_man_add.jsp")
					.forward(request, response);
			break;
		case 'D':
			request.getRequestDispatcher("manage/routeweek_man_indexD.jsp")
					.forward(request, response);
			break;
		case 'U':

			request.getRequestDispatcher("manage/routeweek_man_indexU.jsp")
					.forward(request, response);
			break;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}

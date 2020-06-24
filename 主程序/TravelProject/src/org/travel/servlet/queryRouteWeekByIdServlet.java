package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.RouteWeek;
import org.travel.service.IRouteWeekService;
import org.travel.service.impl.RouteWeekServiceImpl;

public class queryRouteWeekByIdServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		int no = Integer.parseInt(request.getParameter("id"));
		IRouteWeekService routeWeekService = new RouteWeekServiceImpl();
		RouteWeek routeWeek = routeWeekService.queryRouteWeekById(no);

		request.setAttribute("routeWeek", routeWeek);
		request.getRequestDispatcher("manage/routeweek_man_update.jsp")
				.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

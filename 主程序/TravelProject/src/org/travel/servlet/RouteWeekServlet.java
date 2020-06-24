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

public class RouteWeekServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		IRouteWeekService routeWeekService = new RouteWeekServiceImpl();
		List<RouteWeek> routeWeeks = routeWeekService.queryAllRouteWeeks();

		request.setAttribute("routeWeeks", routeWeeks);
		request.getRequestDispatcher("route-week.jsp").forward(request,
				response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

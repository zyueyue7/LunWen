package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.service.IRouteWeekService;
import org.travel.service.impl.RouteWeekServiceImpl;

public class deleteRouteWeekServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 删除
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");

		// 获取前端传过来的id
		int no = Integer.parseInt(request.getParameter("id"));

		IRouteWeekService routeWeekService = new RouteWeekServiceImpl();
		boolean result = routeWeekService.deleteRouteWeekById(no);

		if (result) {
			// out.print();
			request.setAttribute("error", "noerror");
			response.getWriter().println("删除成功");
			// response.sendRedirect("queryAllRouteWeekServlet?action=D");// 重定向
		} else {
			request.setAttribute("error", "adderror");
			response.getWriter().println("删除失败");
		}
		request.getRequestDispatcher("queryAllRouteWeekServlet?action=D")
				.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

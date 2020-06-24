package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.RouteWeek;
import org.travel.service.IRouteWeekService;
import org.travel.service.impl.RouteWeekServiceImpl;

public class updateRouteWeekServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		// 获取要修改的那个路线
		int no = Integer.parseInt(request.getParameter("id"));
		// 获取要修改后的内容
		String name = request.getParameter("routew_name");
		String img1 = request.getParameter("routew_img1");
		String img2 = request.getParameter("routew_img2");
		String img3 = request.getParameter("routew_img3");
		String img4 = request.getParameter("routew_img4");
		String img5 = request.getParameter("routew_img5");
		int price = Integer.parseInt(request.getParameter("routew_price"));
		String route = request.getParameter("routew_route");

		// 将获取到的路线封装到一个实体中
		RouteWeek routeWeek = new RouteWeek(name, img1, img2, img3, img4, img5,
				price, route);
		IRouteWeekService routeWeekService = new RouteWeekServiceImpl();
		boolean result = routeWeekService.updateRouteWeekById(no, routeWeek);
		if (result) {
			request.setAttribute("error", "noerror");
			response.getWriter().print("修改成功");
			// response.sendRedirect("queryAllRouteWeekServlet?action=U");

		} else {
			request.setAttribute("error", "adderror");
			response.getWriter().print("修改失败");
		}
		request.getRequestDispatcher("queryAllRouteWeekServlet?action=U")
				.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

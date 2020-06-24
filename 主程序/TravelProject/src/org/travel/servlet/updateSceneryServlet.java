package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.Scenery;
import org.travel.service.ISceneryService;
import org.travel.service.impl.SceneryServiceImpl;

public class updateSceneryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 要修改的那个景点
		int no = Integer.parseInt(request.getParameter("id"));
		// 获取修改后的内容
		String img = request.getParameter("scenery_img");
		// System.out.println(name);
		String name = request.getParameter("scenery_name");
		String rank = request.getParameter("scenery_rank");
		String address = request.getParameter("scenery_address");
		String time = request.getParameter("scenery_time");
		String desc = request.getParameter("scenery_desc");
		// 将修改后的内容 封装到一个实体类中

		Scenery scenery = new Scenery(img, name, rank, address, time, desc);
		ISceneryService sceneryService = new SceneryServiceImpl();
		boolean result = sceneryService.updateSceneryById(no, scenery);

		if (result) {
			// out.print();
			request.setAttribute("error", "noerror");
			response.getWriter().println("修改成功");
			// response.sendRedirect("queryAllSceneryServlet?action=U"); //
			// 这用重定向
			// 数据不会丢失吗？
		} else {
			request.setAttribute("error", "adderror");
			response.getWriter().println("修改失败");
		}
		request.getRequestDispatcher("queryAllSceneryServlet?action=U")
				.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}

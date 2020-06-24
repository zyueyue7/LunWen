package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.service.ISceneryService;
import org.travel.service.impl.SceneryServiceImpl;

public class deleteSceneryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 删除
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");
		// 接受前端传来的id
		int no = Integer.parseInt(request.getParameter("id"));

		ISceneryService sceneryService = new SceneryServiceImpl();
		boolean result = sceneryService.deleteSceneryById(no);

		if (result) {
			// out.print();
			request.setAttribute("error", "noerror");
			response.getWriter().println("删除成功");
			// response.sendRedirect("queryAllSceneryServlet?action=D");// 重定向
		} else {
			request.setAttribute("error", "adderror");
			response.getWriter().println("删除失败");
		}
		request.getRequestDispatcher("queryAllSceneryServlet?action=D")
				.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

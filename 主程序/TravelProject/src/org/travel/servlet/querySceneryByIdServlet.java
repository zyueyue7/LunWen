package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.Scenery;
import org.travel.service.ISceneryService;
import org.travel.service.impl.SceneryServiceImpl;

public class querySceneryByIdServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		int no = Integer.parseInt(request.getParameter("id"));

		ISceneryService sceneryService = new SceneryServiceImpl();
		Scenery scenery = sceneryService.querySceneryById(no);

		// 将此人的数据 通过前台的jsp显示：sceneryInfo.jsp
		request.setAttribute("scenery", scenery); // 将查询到的景点信息放入request域中

		request.getRequestDispatcher("manage/sceneryInfo.jsp").forward(request,
				response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

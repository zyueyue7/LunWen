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

public class SceneryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		ISceneryService sceneryService = new SceneryServiceImpl();
		List<Scenery> sceneries = sceneryService.queryAllScenery();

		request.setAttribute("sceneries", sceneries);
		request.getRequestDispatcher("scenery.jsp").forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

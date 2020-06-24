package org.travel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.WtLink;
import org.travel.service.IWtLinkService;
import org.travel.service.impl.WtLinkServiceImpl;

public class wtlinkServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		/* char ch = request.getParameter("action").charAt(0); */

		IWtLinkService wtLinkService = new WtLinkServiceImpl();
		List<WtLink> wtLinks = wtLinkService.queryAllLinks();

		request.setAttribute("wtlink", wtLinks);
		request.getRequestDispatcher("manage/wtlink_man_index.jsp").forward(
				request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}

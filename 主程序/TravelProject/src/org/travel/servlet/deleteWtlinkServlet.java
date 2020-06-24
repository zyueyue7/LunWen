package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.service.IWtLinkService;
import org.travel.service.impl.WtLinkServiceImpl;

public class deleteWtlinkServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		IWtLinkService wtLinkService = new WtLinkServiceImpl();

		String linkname1 = request.getParameter("linkname");
		String linkname = new String(linkname1.getBytes("ISO-8859-1"), "utf-8");
		System.out.println(linkname);
		boolean result1 = wtLinkService.deletelink(linkname);
		if (result1) {
			System.out.print("删除链接成功");
			request.setAttribute("msg", "dnoerror");
		} else {
			System.out.print("删除链接失败");
			request.setAttribute("msg", "derror");
		}

		request.getRequestDispatcher("wtlinkServlet")
				.forward(request, response);
	}
}

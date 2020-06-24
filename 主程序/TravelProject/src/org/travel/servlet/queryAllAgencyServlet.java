package org.travel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.agency;
import org.travel.service.IAgencyService;
import org.travel.service.impl.AgencyServiceImpl;

public class queryAllAgencyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");

		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		IAgencyService agencyService = new AgencyServiceImpl();
		List<agency> agencies = agencyService.queryAllAgency();

		request.setAttribute("agencies", agencies);
		switch (ch) {
		case 'A':
			request.getRequestDispatcher("manage/agency_man_add.jsp").forward(
					request, response);
			break;
		case 'D':
			request.getRequestDispatcher("manage/agency_man_delete.jsp")
					.forward(request, response);
			break;
		case 'Q':
			request.getRequestDispatcher("agency.jsp").forward(request,
					response);
			break;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

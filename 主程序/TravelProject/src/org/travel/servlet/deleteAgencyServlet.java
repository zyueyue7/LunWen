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

public class deleteAgencyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");

		int id = Integer.parseInt(request.getParameter("id"));
		IAgencyService agencyService = new AgencyServiceImpl();
		boolean result = agencyService.deleteAgency(id);
		List<agency> agencies = agencyService.queryAllAgency();
		if (result) {
			System.out.println("删除成功");
			request.setAttribute("error", "noerror");
		} else {
			System.out.println("删除失败");
			request.setAttribute("error", "adderror");
		}
		request.setAttribute("agencies", agencies);
		request.getRequestDispatcher("manage/agency_man_delete.jsp").forward(
				request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}

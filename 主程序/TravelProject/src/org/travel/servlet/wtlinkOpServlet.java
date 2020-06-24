package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.WtLink;
import org.travel.service.IWtLinkService;
import org.travel.service.impl.WtLinkServiceImpl;

public class wtlinkOpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		// 设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		IWtLinkService wtLinkService = new WtLinkServiceImpl();

		switch (ch) {
		case 'A':
			String linkname = request.getParameter("linkname");
			System.out.println(linkname);
			String linkaddress = request.getParameter("linkaddress");
			WtLink wtLink = new WtLink(linkname, linkaddress);
			int result = wtLinkService.addlink(wtLink);
			if (result == 1) {
				System.out.print("增加链接成功");
				request.setAttribute("msg", "anoerror");
			} else if (result == 2) {
				System.out.print("该链接已经存在");
				request.setAttribute("msg", "aexist");
			} else {
				System.out.print("增加链接失败");
				request.setAttribute("msg", "aerror");
			}
			break;
		case 'D':
			String linkname1 = request.getParameter("linkname");
			boolean result1 = wtLinkService.deletelink(linkname1);
			if (result1) {
				System.out.print("删除链接成功");
				request.setAttribute("msg", "noerror");
			} else {
				System.out.print("增加链接失败");
				request.setAttribute("msg", "error");
			}
			break;

		}
		request.getRequestDispatcher("wtlinkServlet")
				.forward(request, response);
	}

}

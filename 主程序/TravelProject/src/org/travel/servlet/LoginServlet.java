package org.travel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.travel.entity.User;
import org.travel.service.IUserService;
import org.travel.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");

		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		switch (ch) {
		// 查看用户信息
		case 'Q':
			IUserService userService = new UserServiceImpl();
			List<User> users = userService.queryUsers();

			request.setAttribute("users", users);
			request.getRequestDispatcher("manage/user_man_index.jsp").forward(
					request, response);
			break;

		// 修改用户休息
		case 'M':
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			User user2 = new User(username, password);
			// 调用service层
			IUserService userService4 = new UserServiceImpl();
			boolean msg = userService4.UpdateUser(user2);

			if (msg) {
				request.setAttribute("regErr", "noaddError");
				request.getRequestDispatcher("manage/user_man_indexU.jsp")
						.forward(request, response);
			} else {
				request.setAttribute("regErr", "addError");
				request.getRequestDispatcher("manage/user_man_indexU.jsp")
						.forward(request, response);
			}

			break;

		// 登录的功能
		case 'L':
			String name = request.getParameter("uname");
			String pwd = request.getParameter("upwd");
			String shenfen = request.getParameter("shenfen");

			User user = new User(name, pwd, shenfen);
			IUserService userService1 = new UserServiceImpl();

			// 调用模型层的登录功能
			boolean result = userService1.Login(user);
			if (result) { // 登录成功
				/*
				 * ServletContext servletContext = request.getSession()
				 * .getServletContext(); servletContext.setAttribute("user",
				 * user);
				 */
				request.setAttribute("msg", "ok");
				HttpSession session = request.getSession();// 获取session
				session.setAttribute("user", user);
				if (shenfen.equals("1")) {
					System.out.println("管理员登录成功");
					response.sendRedirect("main/main.jsp");
				} else {
					System.out.println("用户登录成功");
					/*
					 * request.getRequestDispatcher("wtlinkServlet").forward(
					 * request, response);
					 */
					response.sendRedirect("index.jsp");
				}
			} else {// 登陆失败
				System.out.println("登录失败");
				request.setAttribute("msg", "adderror");
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
				/* request.setAttribute("error", "adderror"); */

				// response.sendRedirect("login.jsp");
			}
			break;

		// 查看个人信息

		// 注销的功能
		case 'O':
			String nameout = request.getParameter("uname");
			IUserService userSer = new UserServiceImpl();

			boolean str1 = userSer.loginstatus(nameout);
			if (str1) {
				HttpSession session = request.getSession(); // 获取session
				System.out.print("-------------------");
				System.out.print(session.getAttribute("user"));
				System.out.print("-------------------");
				System.out.print(session.getAttribute("JSESSIONID"));
				System.out.print("-------------------");
				System.out.print(session.getAttribute("sessionID"));

				session.removeAttribute("user");
				response.sendRedirect("login.jsp");
			} else {
				// 提示退出失败怎么写？
				request.setAttribute("msgout", "注销失败");
				// response.sendRedirect("index.jsp");
				request.getRequestDispatcher("index.jsp").forward(request,
						response);
			}

			break;
		case 'S':
			request.getRequestDispatcher("login.jsp")
					.forward(request, response);

			// 注册的功能
		case 'R':
			String regName = request.getParameter("uname");
			String regPwd = request.getParameter("upwd");
			String regPhone = request.getParameter("phone");
			String regEmail = request.getParameter("email");

			User regUser = new User(regName, regPwd, regPhone, regEmail);

			// service层调用
			IUserService userService2 = new UserServiceImpl();
			int regResult = userService2.Register(regUser);

			// -1用户存在 0注册失败 1注册成功
			if (regResult == 1) {
				response.sendRedirect("login.jsp");
			} else if (regResult == 0) {
				request.setAttribute("regErr", "注册失败");
				request.getRequestDispatcher("register.jsp").forward(request,
						response);
			} else {
				request.setAttribute("regErr", "用户存在");
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
			}
			break;

		// 修改密码的功能

		case 'U':
			String name1 = request.getParameter("uname");
			String pwd1 = request.getParameter("upwd");
			String pwd2 = request.getParameter("newpwd");

			// service层调用
			IUserService userService3 = new UserServiceImpl();
			int result1 = userService3.Update(name1, pwd1, pwd2);

			if (result1 == 1) {
				response.sendRedirect("login.jsp");
			} else if (result1 == 0) {
				request.setAttribute("Error", "更新失败");
				request.getRequestDispatcher("update.jsp").forward(request,
						response);
			} else {
				request.setAttribute("Error", "旧密码填写错误");
				request.getRequestDispatcher("update.jsp").forward(request,
						response);
			}
			break;

		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

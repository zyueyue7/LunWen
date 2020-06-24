package org.travel.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.Note;
import org.travel.service.INoteService;
import org.travel.service.impl.NoteServiceImpl;

public class NoteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 设置响应编码
		response.setCharacterEncoding("utf-8");
		response.setContentType("utf-8");

		String notetitle = request.getParameter("notetitle");
		String notecontent = request.getParameter("notecontent");

		Note note = new Note(notetitle, notecontent);
		INoteService noteService = new NoteServiceImpl();
		boolean result = noteService.addnote(note);
		if (result) {
			System.out.print("留言成功");
			request.getRequestDispatcher("index.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("note.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

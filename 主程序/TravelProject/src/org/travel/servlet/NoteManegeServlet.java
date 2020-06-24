package org.travel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.travel.entity.Note;
import org.travel.service.INoteService;
import org.travel.service.impl.NoteServiceImpl;

public class NoteManegeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		char ch = request.getParameter("action").charAt(0);
		System.out.print(ch);

		INoteService noteService = new NoteServiceImpl();
		List<Note> notes = noteService.quaryAllNotes();

		request.setAttribute("notes", notes);

		switch (ch) {
		// 跳转到查看界面
		case 'Q':

			request.getRequestDispatcher("manage/note_man_indexQ.jsp").forward(
					request, response);
			break;

		// 跳转到审核界面，只处理没有审核过的留言
		case 'A':
			/* List<Note> notes1 = noteService.queryNotesBySta(); */
			List<Note> notes1 = noteService.queryNotesBySta(0);
			request.setAttribute("notes", notes1);
			request.getRequestDispatcher("manage/note_man_indexA.jsp").forward(
					request, response);

			break;

		// 跳转到回复留言界面,1表示通过，2表示拒绝，0表示没有审核，只回复通过审核的留言
		case 'R':
			List<Note> notes2 = noteService.queryNoteByStaReply(1);
			request.setAttribute("notes", notes2);
			request.getRequestDispatcher("manage/note_man_indexR.jsp").forward(
					request, response);

			break;

		// 跳转到删除页面
		case 'D':
			request.getRequestDispatcher("manage/note_man_indexD.jsp").forward(
					request, response);
			break;

		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

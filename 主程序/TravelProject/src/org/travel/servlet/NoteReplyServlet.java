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

public class NoteReplyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		int id = Integer.parseInt(request.getParameter("id"));
		String notetitle = request.getParameter("notetitle");
		String notecontent = request.getParameter("notecontent");
		String notereply = request.getParameter("notereply");

		Note note = new Note(id, notetitle, notecontent, notereply);

		INoteService noteService = new NoteServiceImpl();
		boolean result = noteService.replyNote(note);
		List<Note> note2 = noteService.queryNoteByStaReply(1);

		if (result) {
			request.setAttribute("error", "noerror");
		} else {
			request.setAttribute("error", "adderror");
		}
		request.setAttribute("notes", note2);
		request.getRequestDispatcher("manage/note_man_indexR.jsp").forward(
				request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

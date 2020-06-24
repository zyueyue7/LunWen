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

public class NoteAgreeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 同意的操作

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String id = request.getParameter("id");
		int no = Integer.parseInt(id);
		INoteService noteService = new NoteServiceImpl();
		boolean result = noteService.agreeNotes(no);
		List<Note> notes = noteService.queryNotesBySta(0);
		if (result) {
			request.setAttribute("agreeError", "noerror");
		} else {
			request.setAttribute("agreeError", "adderror");
		}
		request.setAttribute("notes", notes);
		request.getRequestDispatcher("manage/note_man_indexA.jsp").forward(
				request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

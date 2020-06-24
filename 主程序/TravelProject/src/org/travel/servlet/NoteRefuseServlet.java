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

public class NoteRefuseServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		int id = Integer.parseInt(request.getParameter("id"));
		INoteService noteService = new NoteServiceImpl();
		boolean result = noteService.refuseNotes(id);
		List<Note> notes = noteService.queryNotesBySta(0);
		if (result) {
			request.setAttribute("refuseError", "noerror");
		} else {
			request.setAttribute("refuseError", "adderror");
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

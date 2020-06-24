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

public class NoteBoardServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		INoteService noteService = new NoteServiceImpl();
		List<Note> notes = noteService.queryNotesBySta(1);

		request.setAttribute("notes", notes);
		request.getRequestDispatcher("noteboard.jsp")
				.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}

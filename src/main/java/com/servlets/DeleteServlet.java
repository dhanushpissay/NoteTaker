package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		int id = Integer.parseInt(request.getParameter("noteID").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = (Note) s.get(Note.class, id);
		s.delete(note);
		System.out.println("Note deleted sucessfully");
		response.sendRedirect("all_notes.jsp");
		tx.commit();
		s.close();

	}

}

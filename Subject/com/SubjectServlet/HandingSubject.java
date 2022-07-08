package com.SubjectServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.SubjectsDAO;
import com.Model.Subjects;

/**
 * Servlet implementation class HandingSubject
 */
@WebServlet("/HandingSubject")
public class HandingSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandingSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setAttribute("VIEW", "./Subject/Subject-edit.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/Layout.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		int Id = Integer.parseInt(request.getParameter("subject-id"));
		String subjectname = request.getParameter("subject-name");
//		
		
				
		Subjects subject = new Subjects();
		subject.setId(Id);
		subject.setNameSubject(subjectname);
		
		if(SubjectsDAO.updateSubject(subject)){
			response.sendRedirect("./ListSubject");
		}else{
			response.sendRedirect("./HandingSubject");
		}
	}

}

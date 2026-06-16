package com.drivesmart.controller;

import com.drivesmart.dao.SessionDAO;
import com.drivesmart.model.SessionBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/BookSessionServlet")
public class BookSessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String student_name = request.getParameter("student_name");
        String branch_location = request.getParameter("branch_location");
        String lesson_type = request.getParameter("lesson_type");

        SessionBean session = new SessionBean();
        session.setStudent_name(student_name);
        session.setBranch_location(branch_location);
        session.setLesson_type(lesson_type);
        session.setStatus("Booked"); 

        SessionDAO dao = new SessionDAO();
        dao.bookSession(session);

        response.sendRedirect("ScheduleServlet");
    }
}

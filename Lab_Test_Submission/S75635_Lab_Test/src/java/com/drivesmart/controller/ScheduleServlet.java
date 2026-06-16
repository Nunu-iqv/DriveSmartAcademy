package com.drivesmart.controller;

import com.drivesmart.dao.SessionDAO;
import com.drivesmart.model.SessionBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;

@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SessionDAO dao = new SessionDAO();
        List<SessionBean> sessionList = dao.getAllSessions();

        request.setAttribute("sessionList", sessionList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("schedule.jsp");
        dispatcher.forward(request, response);
    }
}

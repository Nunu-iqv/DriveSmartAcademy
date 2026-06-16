package com.drivesmart.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.drivesmart.model.SessionBean;

public class SessionDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private static final String USER = "root"; 
    private static final String PASSWORD = ""; 

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public void bookSession(SessionBean session) {
        String sql = "INSERT INTO Training_Sessions (student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, session.getStudent_name());
            ps.setString(2, session.getBranch_location());
            ps.setString(3, session.getLesson_type());
            ps.setString(4, session.getStatus());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<SessionBean> getAllSessions() {
        List<SessionBean> sessions = new ArrayList<>();
        String sql = "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";

        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                SessionBean session = new SessionBean(
                        rs.getInt("session_id"),
                        rs.getString("student_name"),
                        rs.getString("branch_location"),
                        rs.getString("lesson_type"),
                        rs.getString("status")
                );
                sessions.add(session);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sessions;
    }
}

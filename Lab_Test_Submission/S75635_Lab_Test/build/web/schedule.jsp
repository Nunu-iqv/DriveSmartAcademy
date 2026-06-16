<%@ page import="java.util.List" %>
<%@ page import="com.drivesmart.model.SessionBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Training Schedule</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; }
        h2 { text-align: center; color: #333; }
        table { width: 80%; margin: 20px auto; border-collapse: collapse; background: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        th, td { padding: 12px; text-align: center; border: 1px solid #ddd; }
        th { background-color: #007BFF; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>Training Sessions Schedule</h2>
    <table>
        <tr>
            <th>Session ID </th>
            <th>Student Name</th>
            <th>Branch Location</th>
            <th>Lesson Type</th>
            <th>Status</th>
        </tr>
        <%
            List<SessionBean> sessions = (List<SessionBean>) request.getAttribute("sessionList");
            if (sessions != null) {
                for (SessionBean s : sessions) {
        %>
        <tr>
            <td><%= s.getSession_id() %></td>
            <td><%= s.getStudent_name() %></td>
            <td><%= s.getBranch_location() %></td>
            <td><%= s.getLesson_type() %></td>
            <td><%= s.getStatus() %></td>
        </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>

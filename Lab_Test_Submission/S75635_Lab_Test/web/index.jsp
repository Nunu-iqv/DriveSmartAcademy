<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>DriveSmart Academy</title>

    <style>

        body{
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
        }

        .header{
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
        }

        .container{
            text-align: center;
            margin-top: 80px;
        }

        .container h2{
            color: #2c3e50;
        }

        .container p{
            color: #555;
            margin-bottom: 30px;
        }

        .menu a{
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            margin: 10px;
            border-radius: 5px;
        }

        .menu a:hover{
            background-color: #2980b9;
        }

        .footer{
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 120px;
        }

    </style>

</head>

<body>

    <%@ include file="header.html" %>

    <div class="container">

        <h2>Welcome to DriveSmart Academy</h2>

        <p>
            Choose an option below:
        </p>

        <div class="menu">

            <a href="book_session.jsp">
                Book Training Session
            </a>

            <a href="ScheduleServlet">
                View Schedule Dashboard
            </a>

        </div>

    </div>

    <%@ include file="footer.jsp" %>

</body>
</html>
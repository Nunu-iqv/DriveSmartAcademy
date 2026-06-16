<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book Session</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; }
        h2 { text-align: center; color: #333; }
        form { max-width: 400px; margin: 30px auto; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        label { display: block; margin-top: 10px; font-weight: bold; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ccc; border-radius: 4px; }
        input[type="submit"] { background-color: #007BFF; color: white; border: none; cursor: pointer; margin-top: 15px; }
        input[type="submit"]:hover { background-color: #0056b3; }
    </style>
</head>
<body>
    <h2>Book Training Session</h2>
    <form method="POST" action="BookSessionServlet">
        <label>Student Name:</label>
        <input type="text" name="student_name" required>

        <label>Branch Location:</label>
        <select name="branch_location" required>
            <option value="">-- Select Branch --</option>
            <option value="Kuala Lumpur">Kuala Lumpur</option>
            <option value="Penang">Penang</option>
            <option value="Johor">Johor</option>
        </select>

        <label>Lesson Type:</label>
        <select name="lesson_type" required>
            <option value="">-- Select Lesson --</option>
            <option value="Manual Car">Manual Car</option>
            <option value="Automatic Car">Automatic Car</option>
            <option value="Motorcycle">Motorcycle</option>
        </select>

        <input type="submit" value="Book Session">
    </form>
</body>
</html>

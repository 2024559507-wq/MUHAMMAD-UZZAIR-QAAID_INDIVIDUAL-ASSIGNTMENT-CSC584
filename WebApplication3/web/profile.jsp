<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile Details</title>
    <style>
        body {
            font-family: Verdana, sans-serif;
            background: #eef2f7;
            padding: 20px;
        }
        .profile-card {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px #aaa;
        }
        h2 {
            text-align: center;
            color: #444;
        }
        p {
            font-size: 16px;
            margin: 8px 0;
        }
        .highlight {
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>
    <div class="profile-card">
        <h2>Profile Information</h2>
        <p><span class="highlight">Name:</span> ${name}</p>
        <p><span class="highlight">Student ID:</span> ${studentId}</p>
        <p><span class="highlight">Program:</span> ${program}</p>
        <p><span class="highlight">Email:</span> ${email}</p>
        <p><span class="highlight">Hobbies:</span> ${hobbies}</p>
        <p><span class="highlight">Introduction:</span> ${intro}</p>
    </div>
</body>
</html>

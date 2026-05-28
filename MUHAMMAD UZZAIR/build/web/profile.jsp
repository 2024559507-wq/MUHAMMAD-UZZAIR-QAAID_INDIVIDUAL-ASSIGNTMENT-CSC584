<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body { font-family: Arial, sans-serif; background: #eef2f7; padding: 20px; }
        .profile-card {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px #ccc;
        }
        h2 { text-align: center; color: #333; }
        .info { margin: 10px 0; font-size: 16px; }
        .info i { color: #007bff; margin-right: 8px; }
        
        .profile-header {
    display: flex;
    align-items: center;
    gap: 20px; /* space between photo and text */
}
.profile-photo {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
}
.profile-info {
    flex: 1; /* text takes remaining space */
}
    </style>
</head>
<body>
    <div class="profile-card">
    <div class="profile-header">
        <img src="${photo}" alt="Profile Photo" class="profile-photo">
        <div class="profile-info">
            <h2><i class="fa-solid fa-user-graduate"></i> Student Profile</h2>
            <div class="info"><i class="fa-solid fa-user"></i> Name: ${name}</div>
            <div class="info"><i class="fa-solid fa-id-card"></i> Student ID: ${studentId}</div>
            <div class="info"><i class="fa-solid fa-book"></i> Program: ${program}</div>
            <div class="info"><i class="fa-solid fa-envelope"></i> Email: ${email}</div>
            <div class="info"><i class="fa-solid fa-heart"></i> Hobbies: ${hobbies}</div>
            <div class="info"><i class="fa-solid fa-comment"></i> Introduction: ${intro}</div>
        </div>
    </div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <head>
      <!-- Design by foolishdeveloper.com -->
        <title>Login Form</title>
     
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <style media="screen">
    *,
    *:before,
    *:after {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }
    
    body {
      background-color: #f2f7ff;
    }
    
    .background {
      width: 430px;
      height: 520px;
      position: absolute;
      transform: translate(-50%, -50%);
      left: 50%;
      top: 50%;
    }
    
    .background .shape {
      height: 200px;
      width: 200px;
      position: absolute;
      border-radius: 50%;
    }
    
    .shape:first-child {
      background: linear-gradient(#6c5ce7, #00a0e8);
      left: -80px;
      top: -80px;
    }
    
    .shape:last-child {
      background: linear-gradient(to right, #00a0e8, #56ccf2);
      right: -30px;
      bottom: -80px;
    }
    
    form {
      height: 520px;
      width: 400px;
      background-color: rgba(255, 255, 255, 0.9);
      position: absolute;
      transform: translate(-50%, -50%);
      top: 50%;
      left: 50%;
      border-radius: 10px;
      box-shadow: 0 0 40px rgba(0, 0, 0, 0.1);
      padding: 50px 35px;
    }
    
    form * {
      font-family: 'Poppins', sans-serif;
      color: #080710;
      letter-spacing: 0.5px;
      outline: none;
      border: none;
    }
    
    form h1 {
      font-size: 32px;
      font-weight: 500;
      line-height: 42px;
      text-align: center;
    }
    
    label {
      display: block;
      margin-top: 30px;
      font-size: 16px;
      font-weight: 500;
    }
    
    input {
      display: block;
      height: 50px;
      width: 100%;
      background-color: rgba(255, 255, 255, 0.7);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 8px;
      font-size: 14px;
      font-weight: 300;
      font-family: Arial, sans-serif;
    }
    
    ::placeholder {
      color: #a3b9d2;
    }
    
    
    
    .form-group {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 20px;
    }
    
    .forgot-password {
      font-size: 14px;
      color: #6c5ce7;
      text-decoration: none;
    }
    
    .forgot-password:hover {
      text-decoration: underline;
    }
    
    input[type="submit"] {
      margin-top: 50px;
      width: 100%;
      background-color: #6c5ce7;
      color: #fff;
      padding: 15px 0;
      font-size: 18px;
      font-weight: 600;
      border-radius: 5px;
      cursor: pointer;
      font-family: Arial, sans-serif;
      transition: background-color 0.3s ease;
    }
    
    input[type="submit"]:hover {
      background-color: #5b4fcf;
    }
    
    
    
        </style>
    </head>
    <body>
        <div class="background">
            <div class="shape"></div>
            <div class="shape"></div>
        </div>
        <form action="loginServlet" method="POST">
            <h1>Login</h1>
    
            <label for="username">Username</label>
            <input type="text" placeholder="Email or Phone" id="username" name="username2">
    
            <label for="password">Password</label>
            <input type="password" placeholder="Password" id="password" name="password2">
    
            <div class="form-group">
              <a href="#" class="forgot-password">Forgot your password?</a>
            </div>
    
            <input type="submit" name="submit" value="Log In" onclick="validate()">
            
        </form>
    </body>
    </html>
    
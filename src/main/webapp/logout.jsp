<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Sign Out</title>
    <style>
      .container {
        width: 50%;
        margin: 0 auto;
        text-align: center;
        background-color: #6c5ce7; 
        color: #ffffff; 
        padding: 20px;
        border-radius: 5px;
        margin-top: 150px;
      }

      h1 {
        font-size: 36px;
        margin-top: 0;
      }

      body {
        background: #ffffff; 
      }

      form {
        margin-top: 20px;
      }

      input[type="submit"] {
        background-color: #ffffff; 
        color: #6c5ce7; 
        border: none;
        padding: 10px 20px;
        font-size: 18px;
        border-radius: 5px;
        cursor: pointer;
      }

      input[type="submit"]:hover {
        background-color: #e3e3e3; 
        color: #6c5ce7; 
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Sign Out</h1>
      <p>Are you sure you want to sign out?</p>
      <form action="Home.jsp">
        <input type="submit" value="Sign Out">
      </form>
    </div>
  </body>
</html>

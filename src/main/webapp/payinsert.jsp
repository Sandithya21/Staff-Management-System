<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>

<style>
    /* Styling for the page */

    body {
        font-family: Arial, sans-serif;
        background-color: #6c5ce7;
    }
    
    h1 {
        color: #ccc;
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
        text-align: center;
    }
    
    form {
        max-width: 500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 14px 28px rgb(0, 0, 0);
    }
    
    input[type=text], input[type=number] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
    }
    
    input[type=submit] {
        background-color: #6c5ce7;
        color: #ccc;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
    input[type=submit]:hover {
        background-color: #6c5ce7;
    }
    
    .button-container {
        display: flex;
        justify-content: center;
    }
</style>

</head>
<body>

    <h1>Payment Details</h1>
    
    <!-- Form to capture payment details -->
    <form action="InsertServlet" method="POST">
    
        <!-- Staff Name input field -->
        Staff Name <input type="text" name="pname"><br><br>
        
        <!-- E-mail input field -->
        E-mail <input type="text" name="pemail"><br><br>
        
        <!-- Work Hours input field -->
        Work Hours <input type="number" name="phour"><br><br>
        
        <!-- Basic Salary input field -->
        Basic Salary <input type="number" name="bsal"><br><br>
        
        <!-- Tax input field -->
        Tax <input type="text" name="tax"><br><br>
        
        <!-- Salary input field -->
        Salary <input type="number" name="salary"><br><br>
        
        <!-- Button container to center align the button -->
        <div class="button-container">
            <!-- Create Payroll submit button -->
            <input type="submit" name="submit" value="Create Payroll">
        </div>
    </form>
    
</body>
</html>

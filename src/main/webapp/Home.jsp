<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bright Mind</title>

	<link rel="stylesheet" href="stylesheet.css">

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

 
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');


    </style>
    
    
    
    <script type="text/javascript">
    let menu = document.querySelector('#menu');
    let navbar = document.querySelector('.navbar');

    menu.onclick = () =>{
      menu.classList.toggle('fa-times');
      navbar.classList.toggle('active');
    }

    window.onscroll = () =>{
      menu.classList.remove('fa-times');
      navbar.classList.remove('active');
    }
    
    </script>
</head>
<body>
<div class="container">

<header>

    <a href="#" class="logo">Bright<span>Mind</span></a>

    <div id="menu" class="fas fa-bars"></div>

    <nav class="navbar">

        <a href="login.jsp">Login</a>
    </nav>

</header>

<!-- home section  -->

<section class="home">

    <div class="content">
        <h3>Education is the most powerful weapon which you can use to change the world</h3>
        
        <a href="#" class="btn">get started</a>
    </div>

    <div class="image">
        <img src="https://images.unsplash.com/photo-1509869175650-a1d97972541a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80" alt="">
    </div>

</section>


<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Our mission is to provide students with the knowledge and skills they need to succeed in school, work, and life. We believe that all students deserve a quality education, regardless of their background or circumstances.</p>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="Home.jsp">home</a>
            <a href="Home.jsp">Manage Staff</a>
            <a href="index.jsp">Staff Salary</a>
            <a href="Home.jsp">Shift Schedule</a>
            <a href="Home.jsp">Manage Leaves</a>
            <a href="Home.jsp">contact Us</a>
        </div>

        
        <div class="box">
            <h3>contact us</h3>
           <p> <i class="fas fa-phone"></i> +9414589632 </p>
           <p> <i class="fas fa-envelope"></i> BrightMind@gmail.com </p>
           <p> <i class="fas fa-map-marker-alt"></i> Colombo, Sri Lanka - 110254 </p>
        </div>

    </div>

    <div class="credit">  <span> </span> | all rights reserved </div>

</section>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
<link rel="stylesheet" href="indexstyle.css">

<style>

@charset "ISO-8859-1";

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

:root {
	--poppins: 'Poppins', sans-serif;
	--lato: 'Lato', sans-serif;

	--light: #F9F9F9;
	--blue: #3C91E6;
	--light-blue: #CFE8FF;
	--grey: #eee;
	--dark-grey: #AAAAAA;
	--dark: #342E37;
	--red: #DB504A;
	--yellow: #FFCE26;
	--light-yellow: #FFF2C6;
	--orange: #FD7238;
	--light-orange: #FFE0D3;
}

html {
	overflow-x: hidden;
}

body.dark {
	--light: #0C0C1E;
	--grey: #060714;
	--dark: #FBFBFB;
}


/* SIDEBAR */
#sidebar {
	position: fixed;
	top: 0;
	left: 0;
	width: 280px;
	height: 100%;
	background: #6c5ce7;
	z-index: 2000;
	font-family: var(--lato);
	transition: .3s ease;
	overflow-x: hidden;
	scrollbar-width: none;
}
#sidebar::--webkit-scrollbar {
	display: none;
}
#sidebar.hide {
	width: 60px;
}
#sidebar .brand {
	font-size: 24px;
	font-weight: 700;
	height: 56px;
	display: flex;
	align-items: center;
	color: black;
	position: sticky;
	top: 0;
	left: 0;
	background: var(--light);
	z-index: 500;
	padding-bottom: 20px;
	box-sizing: content-box;
}
#sidebar .brand .bx {
	min-width: 60px;
	display: flex;
	justify-content: center;
}
#sidebar .side-menu {
	width: 100%;
	margin-top: 48px;
}
#sidebar .side-menu li {
	height: 48px;
	background: transparent;
	margin-left: 6px;
	border-radius: 48px 0 0 48px;
	padding: 4px;
}
#sidebar .side-menu li.active {
	background: var(--grey);
	position: relative;
}
#sidebar .side-menu li.active::before {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	top: -40px;
	right: 0;
	box-shadow: 20px 20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li.active::after {
	content: '';
	position: absolute;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	bottom: -40px;
	right: 0;
	box-shadow: 20px -20px 0 var(--grey);
	z-index: -1;
}
#sidebar .side-menu li a {
	width: 100%;
	height: 100%;
	background: var(--light);
	display: flex;
	align-items: center;
	border-radius: 48px;
	font-size: 16px;
	color: var(--dark);
	white-space: nowrap;
	overflow-x: hidden;
}
#sidebar .side-menu.top li.active a {
	color: var(--blue);
}
#sidebar.hide .side-menu li a {
	width: calc(48px - (4px * 2));
	transition: width .3s ease;
}
#sidebar .side-menu li a.logout {
	color: var(--red);
}
#sidebar .side-menu.top li a:hover {
	color: var(--blue);
}
#sidebar .side-menu li a .bx {
	min-width: calc(60px  - ((4px + 6px) * 2));
	display: flex;
	justify-content: center;
}
/* SIDEBAR */
	

body {
			font-family: Arial, sans-serif;
			background-color: #f5f5f5; 
		}

		h1 {
			color: #6c5ce7; 
			font-size: 28px;
			font-weight: bold;
			margin-bottom: 20px;
			text-align: center;
			margin-top: 30px;
			margin-left: 200px;
		}

		table {
			border-collapse: collapse;
			border: 4px solid #6c5ce7; 
			width: 50%;
			margin: 0 auto;
			margin-top: 50px;
			margin-bottom: 20px;
			margin-right: 250px;
			font-size: 16px;
			font-family: Arial, sans-serif;
			background-color: white;
			font-weight: bold;
		}

		th{
			border: 4px solid #6c5ce7; 
			text-align: center;
			background-color: #ccc;
		}
		td {
			border: 4px solid #6c5ce7; 
			text-align: center;
		}

		input[type="submit"] {
			background-color: #6c5ce7; 
			color: white; 
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
			font-family: Arial, sans-serif;
			margin-left: 700px;
			margin-bottom: 100px;
		}

		input[type="text"] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: none;
			font-size: 16px;
			font-family: Arial, sans-serif;
		}

		input[type="text"]:focus {
			outline: none;
		}
		input[type="submit"]:hover {
  			background-color:black ;
		}


</style>

<script>

function performSearch() {
    // Get the search input value
    const searchInput = document.getElementById('searchInput').value;
    // Perform search operations here...
    alert('Performing search for Staff ID: ' + searchInput);
}


const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});

// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})


const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})

if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})



</script>


<meta charset="ISO-8859-1">
<title>Admin Panel</title>
</head>
<body>

<!-- SIDEBAR -->
<section id="sidebar">
	<a href="#" class="brand">
		<i class='bx bxs-graduation'></i>
		<span class="text"><h2>BrightMind</h2></span>
	</a>
	<!-- Top menu items -->
	<ul class="side-menu top">
		<!-- Manage Staff -->
		<li>
			<a href="deletepayment.jsp">
				<i class='bx bxs-group' ></i>
				<span class="text">Manage Staff</span>
			</a>
		</li>
		<!-- Staff Salary -->
		<li>
			<a href="index.jsp">
				<i class='bx bxs-credit-card' ></i>
				<span class="text">Staff Salary</span>
			</a>
		</li>
		<!-- Shift Schedule -->
		<li>
			<a href="deletepayment.jsp">
				<i class='bx bxs-calendar-check' ></i>
				<span class="text">Shift Schedule</span>
			</a>
		</li>
		<!-- Manage Leaves -->
		<li>
			<a href="deletepayment.jsp">
				<i class='bx bxs-message-square-add' ></i>
				<span class="text">Manage Leaves</span>
			</a>
		</li>
	</ul>
	<!-- Bottom menu items -->
	<ul class="side-menu">
		<!-- Settings -->
		<li>
			<a href="#">
				<i class='bx bxs-cog' ></i>
				<span class="text">Settings</span>
			</a>
		</li>
		<!-- Logout -->
		<li>
			<a href="logout.jsp" class="logout">
				<i class='bx bxs-log-out-circle' ></i>
				<span class="text">Logout</span>
			</a>
		</li>
	</ul>
</section>

<%
// Retrieving values from request parameters
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String workhours = request.getParameter("workhours");
double basicsalary = Double.parseDouble(request.getParameter("basicsalary"));
double tax = Double.parseDouble(request.getParameter("tax"));
double salary = Double.parseDouble(request.getParameter("salary"));
%>

<h1>Delete Staff Payment</h1>

<form action="DeleteServlet" method="POST">
	<table>
		<tr>
			<th>Staff ID</th>
			<td><input type="text" name="stid" value="<%= id %>" readonly></td>
		</tr>
		<tr>
			<th>Staff Name</th>
			<td><input type="text" name="stname" value="<%= name %>" readonly></td>
		</tr>
		<tr>
			<th>Email Address</th>
			<td><input type="text" name="stemail" value="<%= email %>" readonly></td>
		</tr>
		<tr>
			<th>Work Hours</th>
			<td><input type="text" name="sthours" value="<%= workhours %>" readonly></td>
		</tr>
		<tr>
			<th>Basic Salary</th>
			<td><input type="text" name="stbsal" value="<%= basicsalary %>" readonly></td>
		</tr>
		<tr>
			<th>Tax</th>
			<td><input type="text" name="sttax" value="<%= tax %>" readonly></td>
		</tr>
		<tr>
			<th>Salary</th>
			<td><input type="text" name="stsalary" value="<%= salary %>" readonly></td>
		</tr>	
	</table>
	<br><br>
	<input type="submit" name="submit" value="Delete Payment Details">
</form>

</body>

</html>
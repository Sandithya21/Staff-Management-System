<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@2.0.7/css/boxicons.min.css">
<link rel="stylesheet" href="styleindex.css">


<script>


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

<style>

@charset "ISO-8859-1";

@import url('https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Poppins:wght@400;500;600;700&display=swap');

</style>

<meta charset="ISO-8859-1">
<title>Admin Panel</title>
</head>
<body>


<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-graduation'></i>
			<span class="text"><h1>BrightMind</h1></span>
		</a>
		<ul class="side-menu top">
			
			<li>
				<a href="index.jsp">
					<i class='bx bxs-group' ></i>
					<span class="text">Manage Staff</span>
				</a>
			</li>
			<li>
				<a href="index.jsp">
					<i class='bx bxs-credit-card' ></i>
					<span class="text">Staff Salary</span>
				</a>
			</li>
			<li>
				<a href="index.jsp">
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">Shift Schedule</span>
				</a>
			</li>
			<li>
				<a href="index.jsp">
					<i class='bx bxs-message-square-add' ></i>
					<span class="text">Manage Leaves</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			<li>
				<a href="#">
					<i class='bx bxs-cog' ></i>
					<span class="text">Settings</span>
				</a>
			</li>
			<li>
				<a href="logout.jsp" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='menu' ></i>
			<a href="useraccount.jsp" class="nav-link">Search</a>
			<form action="payment.jsp">
				<div class="form-input">
				
					<input type="text" placeholder="Enter Staff ID" name="stfid">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			
			</a>
			<div>
  <a href="#" class="profile">
    <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="Login">
     <label for="user-type" ></label>
  <select id="user-type" name="user-type";>
  <a href="login.jsp" class="profile">
    <option value="admin">Admin</option>
   </a>
    <a href="login.jsp" class="profile">
    <option value="user">User</option>
    </a>
  </select>
  </a>
 
</div>
		</nav>
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Admin Panel</h1>
					
				</div>
				
			</div>
			
			

			<ul class="box-info">
			<a href="payinsert.jsp">
			
				 <li>
				
					<i class='bx bxs-book-add'color="black" ><box-icon name='bx bx-user-plus'  ></box-icon></i>
					<div class="add">
					<span class="text">
					
					<h3>Add Payment</h3>
					
					</span>
					</div>
					
				</li>
				
				
				</a>
				
				<a href="payment.jsp">
			
				 <li>
				
					<i class='bx bxs-group' ></i>
					<div class="add">
					<span class="text">
					
					<h3>View Payment Details</h3>
					
					</span>
					</div>
					
				</li>
				
				
				</a>
				
			</ul>


			<div class="table-data">
				<div class="order">
					<div class="head">
						<h3>Recently Added Staff Details</h3>
						<i class='bx bx-search' ></i>
						<i class='bx bx-filter' ></i>
					</div>
					<table>
						<thead>
							<tr>
								<th>Staff Member</th>
								<th>Last Modified Date</th>
								 <th>Last Modified Time</th>
						        <th>Status</th>
						       
							</tr>
						</thead>
						<tbody>
						<tr>
								<td>
									<img src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80">
									<p>R.G.S.A.Siriwardene</p>
								</td>
								<td>21-05-2023</td>
								<td> 6hrs ago</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80">
									<p>K.S.D.S.Wickramasuriya</p>
								</td>
								<td>20-05-2023</td>
								<td>1 day ago</td>
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80">
									<p>H.L.P.P.De Silva</p>
								</td>
								<td>20-05-2023</td>
								<td>1 day ago</td>
								<td><span class="status process">Process</span></td>

							</tr>
							<tr>
								<td>
									<img src="https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80">
									<p>N.S.P.Balasuriya</p>
								</td>
								<td>19-05-2021</td>
								<td>2 day ago</td>
								
								<td><span class="status pending">Pending</span></td>
							</tr>
							<tr>
								<td>
									<img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60">
									<p>T.V.S.P.Gamage</p>
								</td>
								<td>18-05-2021</td>
								<td>3 day ago</td>
								<td><span class="status completed">Completed</span></td> 
								
							</tr>
						</tbody>
					</table>
				</div>
				
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="script.js"></script>

</body>
</html>
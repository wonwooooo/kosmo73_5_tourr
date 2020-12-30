<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>

	<!-- ============================================================== -->
	<!-- navbar -->
	<!-- ============================================================== -->
	<div class="dashboard-header">
		<nav class="navbar navbar-expand-lg bg-white fixed-top">
		
		<!--
			- 회사 이름
			- 클릭시 유저페이지로 이동 
		 -->
		<a class="navbar-brand" href="/">Re:KO</a>
		
		
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse " id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto navbar-right-top">
				<li class="nav-item">
				<div id="custom-search" class="top-search-bar">
					<input class="form-control" type="text" placeholder="Search">
				</div>
				</li>
				<li class="nav-item dropdown notification">
				<a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i><span class="indicator"></span></a>
				<ul class="dropdown-menu dropdown-menu-right notification-dropdown">
					<li>
					<div class="notification-title">
						 Notification
					</div>
					<div class="notification-list">
						<div class="list-group">
							<a href="#" class="list-group-item list-group-item-action active">
							<div class="notification-info">
								<div class="notification-list-user-img">
									<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle">
								</div>
								<div class="notification-list-user-block">
									<span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
									<div class="notification-date">
										2 min ago
									</div>
								</div>
							</div>
							</a>
							<a href="#" class="list-group-item list-group-item-action">
							<div class="notification-info">
								<div class="notification-list-user-img">
									<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle">
								</div>
								<div class="notification-list-user-block">
									<span class="notification-list-user-name">
									John Abraham</span>is now following you
									<div class="notification-date">
										2 days ago
									</div>
								</div>
							</div>
							</a>
							<a href="#" class="list-group-item list-group-item-action">
							<div class="notification-info">
								<div class="notification-list-user-img">
									<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle">
								</div>
								<div class="notification-list-user-block">
									<span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
									<div class="notification-date">
										2 min ago
									</div>
								</div>
							</div>
							</a>
							<a href="#" class="list-group-item list-group-item-action">
							<div class="notification-info">
								<div class="notification-list-user-img">
									<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle">
								</div>
								<div class="notification-list-user-block">
									<span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
									<div class="notification-date">
										2 min ago
									</div>
								</div>
							</div>
							</a>
						</div>
					</div>
					</li>
					<li>
					<div class="list-footer">
						<a href="#">View all notifications</a>
					</div>
					</li>
				</ul>
				</li>
				<li class="nav-item dropdown connection">
				<a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-fw fa-th"></i></a>
				<ul class="dropdown-menu dropdown-menu-right connection-dropdown">
					<li class="connection-list">
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/github.png" alt="">
							<span>Github</span></a>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/dribbble.png" alt="">
							<span>Dribbble</span></a>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/dropbox.png" alt="">
							<span>Dropbox</span></a>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/bitbucket.png" alt="">
							<span>Bitbucket</span></a>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/mail_chimp.png" alt="">
							<span>Mail chimp</span></a>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
							<a href="#" class="connection-item"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/slack.png" alt="">
							<span>Slack</span></a>
						</div>
					</div>
					</li>
					<li>
					<div class="conntection-footer">
						<a href="#">More</a>
					</div>
					</li>
				</ul>
				</li>
				<li class="nav-item dropdown nav-user">
				<a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle">
				여기에 로그인 한 사람 사진 
					<c:if test="${sessionScope.login != null }">
						<h5 class="mb-0 nav-user-name">${sessionScope.login }</h5>
						
					</c:if>
				</a>
				<div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
					<div class="nav-user-info">


					<!-- ************************************* -->
					<!-- 로그인 후 세션에 이름 / 헤더에 이름 보이게 -->
					<!-- ************************************* -->
					<c:if test="${sessionScope.login != null }">
						<h5 class="mb-0 text-white nav-user-name">${sessionScope.login }</h5>
						
					</c:if>


						<span class="status"></span><span class="ml-2">Available</span>
					</div>
					<a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
					<a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
					<a class="dropdown-item" href="/zzTourr2/adminViews/enter/adminLogout.trip"><i class="fas fa-power-off mr-2"></i>Logout</a>
				</div>
				</li>
			</ul>
		</div>
		</nav>
	</div>
	<!-- ============================================================== -->
	<!-- end navbar -->
	<!-- ============================================================== -->
	
	
	<!-- ============================================================== -->
	<!-- left sidebar -->
	<!-- ============================================================== -->
	<div class="nav-left-sidebar sidebar-dark">
		<div class="menu-list">
			<nav class="navbar navbar-expand-lg navbar-light">
			
			<!-- ◀◀◀ 화면 줄어들었을 때 ▶▶▶ -->
			<a class="d-xl-none d-lg-none" href="#">MENU</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			
			<!-- ◀◀◀ 화면 클 때 ▶▶▶ -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav flex-column">
			
			
					<!-- ◀◀◀ Group1 ▶▶▶ -->
					<li class="nav-divider">Task </li>
			
					<!-- ◀◀◀ Main ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="/zzTourr2/adminViews/main/adminMain.trip"><i class="fa fa-fw fa-rocket"></i>Main</a>
					</li>
					<!-- ◀◀◀ end Main ▶▶▶ -->
			
					<!-- ◀◀◀ Dashboard ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i class="fas fa-fw fa-chart-pie"></i>Dashboard</a>
					<div id="submenu-3" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="/zzTourr2/adminViews/dashboard/adminChart.trip">C3 Charts</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="chart-chartist.html">Chartist Charts</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="chart-charts.html">Chart</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="chart-morris.html">Morris</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="chart-sparkline.html">Sparkline</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="chart-gauge.html">Guage</a>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end Dashboard ▶▶▶ -->
				
					<!-- ◀◀◀ Reservation ▶▶▶ -->
					<li class="nav-item ">
					<a class="nav-link" href="/zzTourr2/adminViews/reservation/adminReservList.trip"><i class="fab fa-fw fa-wpforms"></i>Reservation</a>
					</li>
					<!-- ◀◀◀ end Reservation ▶▶▶ -->
				
					<!-- ◀◀◀ Account ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i class="fas fa-fw fa-table"></i>Account</a>
					<div id="submenu-5" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="adminMemberList.trip">Member List</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="adminClientList.trip">Client List</a>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end Account ▶▶▶ -->
				
					<!-- ◀◀◀ Product ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-7" aria-controls="submenu-7"><i class="fas fa-fw fa-inbox"></i>Product<span class="badge badge-secondary">New</span></a>
					<div id="submenu-7" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="adminHotelProdList.trip">Room</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="adminGuideProdList.trip">Guide</a>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end Product ▶▶▶ -->
				
					<!-- ◀◀◀ Form ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-10" aria-controls="submenu-10"><i class="fas fa-f fa-folder"></i>Form</a>
					<div id="submenu-10" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-11" aria-controls="submenu-11">Calculate</a>
							<div id="submenu-11" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item">
									<a class="nav-link" href="#">Invoice</a>
									</li>
									<li class="nav-item">
									<a class="nav-link" href="#">Tax</a>
									</li>
								</ul>
							</div>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end Form ▶▶▶ -->
				
				
					<!-- ◀◀◀ Group2 ▶▶▶ -->
					<li class="nav-divider">
					Setting </li>
				
					<!-- ◀◀◀ MY ▶▶▶ -->
					<li class="nav-item ">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>My<span class="badge badge-success">6</span></a>
					<div id="submenu-1" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="" aria-expanded="false" data-target="#submenu-1-2" aria-controls="submenu-1-2">Personal Info</a>
							<div id="submenu-1-2" class="collapse submenu" style="">
							</div>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="">Main Setting</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1-1" aria-controls="submenu-1-1">?</a>
							<div id="submenu-1-1" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item">
									<a class="nav-link" href="../dashboard-influencer.html">??</a>
									</li>
									<li class="nav-item">
									<a class="nav-link" href="../influencer-finder.html">???</a>
									</li>
								</ul>
							</div>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end MY ▶▶▶ -->
					
					
					<!-- ◀◀◀ Group3 ▶▶▶ -->
					<li class="nav-divider">
					etc </li>
					
					<!-- ◀◀◀ Board ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-file"></i>Board</a>
					<div id="submenu-6" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="">Notice</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="blank-page.html">Community</a>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end Board ▶▶▶ -->
				
				
					<!-- ◀◀◀ Group4 ▶▶▶ -->
					<li class="nav-divider">
					+a </li>
				
					<!-- ◀◀◀ Planner ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-8" aria-controls="submenu-8"><i class="fas fa-fw fa-columns"></i>Planner</a>
					<div id="submenu-8" class="collapse submenu" style="">
					</div>
					</li>
					<!-- ◀◀◀ end Planner ▶▶▶ -->
				
					<!-- ◀◀◀ ?? ▶▶▶ -->
					<li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-9" aria-controls="submenu-9"><i class="fas fa-fw fa-map-marker-alt"></i>Maps</a>
					<div id="submenu-9" class="collapse submenu" style="">
						<ul class="nav flex-column">
							<li class="nav-item">
							<a class="nav-link" href="map-google.html">Google Maps</a>
							</li>
							<li class="nav-item">
							<a class="nav-link" href="map-vector.html">Vector Maps</a>
							</li>
						</ul>
					</div>
					</li>
					<!-- ◀◀◀ end ?? ▶▶▶ -->
					
					
				</ul>
			</div>
			</nav>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end left sidebar -->
	<!-- ============================================================== -->
	
</body>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<title>adminClient.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">


/*
	ajax
	: 숙소사장리스트
 */
window.addEventListener("DOMContentLoaded", function(){
	 
	 $.ajax({
		type: "post",
		url: "adminAjaxClientList.trip",
		success: function(data){
			alert("가져온 데이터 입니다 . "+data);
		},
		error: function(request, status, error){
			
		}
		
	});
	
})
</script>


</head>
<body>
	<!-- ★★★★★★ (page) ★★★★★★ -->
	
	
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
	
	
		<!-- 헤더 + nav -->
		<!-- ============================================================== -->
		<!-- header -->
		<!-- ============================================================== -->
		<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_header.jsp"/>
		<!-- ============================================================== -->
		<!-- end header -->
		<!-- ============================================================== -->
	
	
		<!-- 본문 -->
		<!-- ============================================================== -->
		<!-- wrapper -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="container-fluid dashboard-content">
			
			
				<!-- ============================================================== -->
				<!-- pageheader -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="page-header">
							<h2 class="pageheader-title">Client List</h2>
							<p class="pageheader-text">
								Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.
							</p>
							<div class="page-breadcrumb">
								<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Account</a></li>
									<li class="breadcrumb-item active" aria-current="page">Client List</li>
								</ol>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- end pageheader -->
				<!-- ============================================================== -->
				
				
				<!-- ============================================================== -->
				<!-- content -->
				<!-- ============================================================== -->
				
				<div class="row">
				
					<!-- ============================================================== -->
					<!-- search bar  -->
					<!-- ============================================================== -->
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card">
							<div class="card-body">
								<form>
									<input class="form-control form-control-lg" type="search" placeholder="Search" aria-label="Search">
									<button class="btn btn-primary search-btn" type="submit">Search</button>
								</form>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end search bar  -->
					<!-- ============================================================== -->
					
					<!-- ============================================================== -->
					<!-- client list  -->
					<!-- ============================================================== -->
					<div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 col-12">
					
						<div class="card" id="ajaxClient">
							<!-- ajax 들어갈 곳 -->
						</div>
					
					</div>
					<!-- ============================================================== -->
					<!-- end client list  -->
					<!-- ============================================================== -->
					
					
					<!-- ============================================================== -->
					<!-- influencer sidebar  -->
					<!-- ============================================================== -->
					<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 col-12">
						<div class="card">
							<div class="card-body">
								<h3 class="font-16">Sorting By</h3>
								<select class="form-control">
									<option>Followers</option>
									<option>Followers</option>
								</select>
							</div>
							<div class="card-body border-top">
								<h3 class="font-16">Influncer by Rating</h3>
								<div class="custom-control custom-radio">
									<input type="radio" id="customRadio1" name="customRadio" class="custom-control-input"><label class="custom-control-label" for="customRadio1"><i class="fas fa-star rating-color fa-xs"></i></label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" id="customRadio2" name="customRadio" class="custom-control-input"><label class="custom-control-label" for="customRadio2"><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i></label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" id="customRadio3" name="customRadio" class="custom-control-input"><label class="custom-control-label" for="customRadio3"><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i></label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" id="customRadio4" name="customRadio" class="custom-control-input"><label class="custom-control-label" for="customRadio4"><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs"></i></label>
								</div>
								<div class="custom-control custom-radio">
									<input type="radio" id="customRadio5" name="customRadio" class="custom-control-input"><label class="custom-control-label" for="customRadio5"><i class="fas fa-star rating-color fa-xs"></i><i class="fas fa-star rating-color fa-xs fa-xs"></i><i class="fas fa-star rating-color fa-xs fa-xs"></i><i class="fas fa-star rating-color fa-xs fa-xs"></i><i class="fas fa-star rating-color fa-xs fa-xs"></i></label>
								</div>
							</div>
							<div class="card-body border-top">
								<h3 class="font-16">Social Media Platform</h3>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck10"><label class="custom-control-label" for="customCheck10">Facebook</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck11"><label class="custom-control-label" for="customCheck11">Instagram</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck12"><label class="custom-control-label" for="customCheck12">Pinterest</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck13"><label class="custom-control-label" for="customCheck13">Twitter</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck14"><label class="custom-control-label" for="customCheck14">Youtube</label>
								</div>
							</div>
							<div class="card-body border-top">
								<h3 class="font-16">Influncer Category</h3>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck15"><label class="custom-control-label" for="customCheck15">Business</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck16"><label class="custom-control-label" for="customCheck16">Lifestyle</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck17"><label class="custom-control-label" for="customCheck17">Fitness</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck18"><label class="custom-control-label" for="customCheck18">Sports</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck19"><label class="custom-control-label" for="customCheck19">Clothing</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck20"><label class="custom-control-label" for="customCheck20">Pets & Animals</label>
								</div>
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" id="customCheck21"><label class="custom-control-label" for="customCheck21">Beauty & Makeup</label>
								</div>
							</div>
							<div class="card-body border-top">
								<h3 class="font-16">Age Demographics</h3>
								<select class="form-control">
									<option selected>Select the Age</option>
									<option value="20-30">20-30</option>
									<option value="30-40">30-40</option>
									<option value="40-50">40-50</option>
								</select>
							</div>
							<div class="card-body border-top">
								<a href="#" class="btn btn-secondary btn-lg btn-block">Submit</a>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end influencer sidebar  -->
					<!-- ============================================================== -->
				</div>
				
				<!-- ============================================================== -->
				<!-- end content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_footer.jsp" />
			<!-- ============================================================== -->
			<!-- end footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- end wrapper -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper -->
	<!-- ============================================================== -->
</body>
</html>
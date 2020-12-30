<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- 
	숙소사장 목록 불러오기 _ ajax
 -->

	<!-- ============================================================== -->
	<!-- card influencer one -->
	<!-- ============================================================== -->
	
	<c:forEach var='vo' items="${mList }">
		<div class="card-body">
			<div class="row align-items-center">
				<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="user-avatar float-xl-left pr-4 float-none">
						<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-1.jpg" alt="User Avatar" class="rounded-circle user-avatar-xl">
					</div>
					<div class="pl-xl-3">
						<div class="m-b-0">
							<div class="user-avatar-name d-inline-block">
								<h2 class="font-24 m-b-10">{숙소주인이름}</h2>
							</div>
							<div>
								${vo.mgrTel} {가지고 있는 숙소 이름}
							</div>
							<div class="rating-star d-inline-block pl-xl-2 mb-2 mb-xl-0">
								{별의 개수만큼 불러와져야 함}
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<p class="d-inline-block text-dark">
									{리뷰 개수}14 Reviews
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="float-xl-right float-none mt-xl-0 mt-4">
						<a href="#" class="btn-wishlist m-r-10"><i class="far fa-star"></i></a><a href="#" class="btn btn-secondary">Send Mail</a>
					</div>
				</div>
			</div>
		</div>
		<div class="border-top user-social-box">
			<div class="user-social-media d-xl-inline-block ">
				<span class="mr-2 twitter-color"><i class="fas fa-home"></i></span><span>13,291{여기는 숙소 개수}</span>
			</div>
		</div>
	</c:forEach>
	
	<!-- ============================================================== -->
	<!-- end card influencer one -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- card influencer one -->
	<!-- ============================================================== -->
<!-- 

		<div class="card-body">
			<div class="row align-items-center">
				<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="user-avatar float-xl-left pr-4 float-none">
						<img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/avatar-1.jpg" alt="User Avatar" class="rounded-circle user-avatar-xl">
					</div>
					<div class="pl-xl-3">
						<div class="m-b-0">
							<div class="user-avatar-name d-inline-block">
								<h2 class="font-24 m-b-10">{가이드이름}</h2>
							</div>
							<div>
								{연락처} {진행하는 투어 이름}
							</div>
							<div class="rating-star d-inline-block pl-xl-2 mb-2 mb-xl-0">
								{별의 개수만큼 불러와져야 함}
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<i class="fa fa-fw fa-star"></i>
								<p class="d-inline-block text-dark">
									{리뷰 개수}14 Reviews
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="float-xl-right float-none mt-xl-0 mt-4">
						<a href="#" class="btn-wishlist m-r-10"><i class="far fa-star"></i></a><a href="#" class="btn btn-secondary">Send Mail</a>
					</div>
				</div>
			</div>
		</div>
		<div class="border-top user-social-box">
			<div class="user-social-media d-xl-inline-block ">
				<span class="mr-2 twitter-color"><i class="fas fa-home"></i></span><span>13,291{여기는 투어 개수}</span>
			</div>
		</div>

-->
	<!-- ============================================================== -->
	<!-- end card influencer one -->
	<!-- ============================================================== -->		




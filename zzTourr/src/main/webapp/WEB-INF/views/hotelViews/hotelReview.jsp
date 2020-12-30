<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelReview</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css" />
</head>
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="ownerlogin.trip">Re:ko</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          숙소 관리 <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="newLodge.trip">숙소 등록</a></li>
            <li><a href="ModifyLodge.trip">숙소 수정</a></li>
            <li><a href="priceEdit.trip">요금 설정</a></li>           
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">예약 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ResMgr.trip">예약 관리</a></li>
            <li><a href="salHis.trip">매출 내역</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" >리뷰 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Review.trip">리뷰 및 피드백</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >계정 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Mypage.trip">마이페이지</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="col-sm-offset-1 col-sm-5">
	<h2>리뷰</h2>
	<div class="wrap-star" >
		<h3>숙소1</h3> 
		<div class="star-rating">
			<span style="width:60%"></span>
		</div>
	</div>
	<div class="wrap-star" >
		<h3>숙소2</h3> <div class="star-rating">
			<span style="width:80%"></span>
		</div>
	</div>
	<div class="wrap-star" >
		<h3>숙소3</h3> <div class="star-rating">
			<span style="width:100%"></span>
		</div>
	</div>
</div>
<div class="col-sm-6">
	<h2>피드백</h2>

</div>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>
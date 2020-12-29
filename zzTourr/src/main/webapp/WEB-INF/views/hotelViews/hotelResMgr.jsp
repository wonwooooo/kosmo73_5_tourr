<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelResMgr.jsp</title>
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
<div class="col-sm-offset-1 col-sm-10 table-responsive" >
<h2>예약목록</h2>
<div class="table-res">
<table class="table" border="1" >
	<thead>
		<tr>
			<th>예약번호</th>
			<th>예약숙소/객실</th>
			<th>체크인/체크아웃</th>
			<th>회원명</th>
			<th>회원연락처</th>
			<th>인원</th>
			<th>예약상태</th>
		</tr>
	</thead>
	<tbody >
		<tr>
			<td>123123</td>
			<td>123</td>
			<td>123</td>
			<td>123</td>
			<td>123</td>
			<td>123</td>
			<td>123</td>
		</tr>
	</tbody>
</table>
</div>
<hr/>
</div>
<div class="col-sm-offset-1 col-sm-9">
<h3>세부내역</h3>
<form role="form">
	<br/>
	<div class="form-group">
	<label>예약번호 :</label> <input type="text"></div>
	<div class="form-group">
	<label>예약숙소/객실 :</label> <input type="text">/<input type="text"></div>
	<div class="form-group">
	<label>체크인/체크아웃 :</label> <input type="text">/<input type="text"></div>
	<div class="form-group">
	<label>회원명 :</label> <input type="text">></div>
	<div class="form-group">
	<label>예약자 연락처 :</label> <input type="text"></div>
	<div class="form-group">
	<label>인원수 :</label> <input type="text"></div>
	<div class="form-group">
	<label>예약금액 :</label> <input type="text"></div>
	<div class="form-group">
	<label>예약상태 :</label> <input type="text"></div>
	<div class="form-group text-right">
         <button type="submit" id="join-submit" class="btn btn-default">
         예약확정
		 </button>
         <button type="submit" class="btn btn-default">
         예약취소
         </button>
    </div>
</form>
</div>

</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>
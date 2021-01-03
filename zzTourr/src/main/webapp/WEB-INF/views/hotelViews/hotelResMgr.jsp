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
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
<jsp:include page="hotelMenu.jsp"/>
<div class="col-sm-offset-1 col-sm-10 table-responsive" >
<h2>예약목록</h2>
<div class="table-res">
<table class="table" border="1" >
	<thead>
		<tr>
			<th>예약번호</th>
			<th>상품id</th>
			<th>체크인/체크아웃</th>
			<th>회원명</th>
			<th>회원연락처</th>
			<th>인원수</th>
			<th>예약상태</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="" var="vo">
		<tr>
			<td>${vo.resId}</td>
			<td >${vo.productId}</td>
			<td >${vo.checkInDate}/${vo.checkOut}</td>
			<td >${vo.userName}</td>
			<td >${vo.userTel}</td>
			<td >${vo.peopleNum}</td>
			<td >${vo.resState}</td>
		</tr>
		</c:forEach>
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
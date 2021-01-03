<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 로그인 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/hotel.css" />
</head>
<script type="text/javascript"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<body>
<br/>	
<div class="col-sm-offset-2 col-sm-10">
<h1>로그인 해주세요.</h1>
</div>
<br/>	
<form class="form-horizontal" action="ownerlogin.trip" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">아이디</label>
    <div class="col-sm-5">
      <input class="form-control" id="inputid" placeholder="id" name="ownerId">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-5">
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="owPass">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-4">
	  <input  class="btn btn-default" type="submit" name="hotelLogin" value="로그인" />
    </div>
  </div>
</form><br/>
<form class="form-horizontal" action="ownerInsert.trip" method="post">
<div class="form-group">
	<div class="col-sm-offset-2 col-sm-4">
		아직 호스팅 아이디가 없으신가요? &nbsp;
		<input class="btn btn-default" type="submit" name="ownerInsert" value="회원가입" />
	</div>
	</div>
</form>

</body>
</html>
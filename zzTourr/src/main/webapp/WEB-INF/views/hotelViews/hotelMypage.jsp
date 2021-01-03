<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelMypage.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="hotelMenu.jsp"/>
<article class="container">
            <div class="page-header">
                <div class="col-md-9 col-md-offset-3">
                <h3>마이페이지</h3>
                </div>
                <div class="col-md-9 col-md-offset-3">
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form method="post" action="updateOwner.trip">
                    <div class="form-group">
                        <label for="inputName">이름</label>
                        <input name="ownerName" value="${vo.ownerName}" type="text" class="form-control" id="inputName" readonly>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">비밀번호</label>
                        <input name="owPass" type="password" class="form-control" id="inputPassword">
                    </div>
                    <div class="form-group">
                        <label for="inputPasswordCheck">비밀번호 확인</label>
                        <input type="password" class="form-control" id="inputPasswordCheck" >
                    </div>
                    <div class="form-group">
                        <label for="inputMobile">휴대폰 번호</label>
                        <input name="lodTel" value="${vo.lodTel}" type="tel" class="form-control" id="inputMobile" readonly>
                    </div>
                  

 					<!-- <div class="form-group">
                    <label>약관 동의</label>
                    <div data-toggle="buttons">
                    <label class="btn btn-primary active">
                    <span class="fa fa-check"></span>
                    <input id="agree" type="checkbox" autocomplete="off" checked>
                    </label>
                    <a href="이용약관">이용약관</a>에 동의합니다.
                    </div>
                    </div> --> 

                    <div class="form-group text-right">
                        <button type="submit" id="join-submit" class="btn btn-default">
                            회원정보 수정
                        </button>
                    </div>
                </form>
            </div>
            </article>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>
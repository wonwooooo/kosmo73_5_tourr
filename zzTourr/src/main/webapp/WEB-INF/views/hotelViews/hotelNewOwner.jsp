<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 회원가입 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<body>
<article class="container">
            <div class="page-header">
                <div class="col-md-9 col-md-offset-3">
                <h3>호스트 회원가입</h3>
                </div>
                <div class="col-md-9 col-md-offset-3">
                <h5>호스트 회원가입 페이지 입니다.</h5>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form role="form">
                    <div class="form-group">
                        <label for="inputName">이름</label>
                        <input type="text" class="form-control" id="inputName" placeholder="이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputEmail">이메일</label>
                        <input type="email" class="form-control" id="InputEmail" placeholder="이메일 주소를 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">비밀번호</label>
                        <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요">
                    </div>
                    <div class="form-group">
                        <label for="inputPasswordCheck">비밀번호 확인</label>
                        <input type="password" class="form-control" id="inputPasswordCheck" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="inputMobile">휴대폰 번호</label>
                        <input type="tel" class="form-control" id="inputMobile" placeholder="휴대폰번호를 입력해 주세요">
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

                    <div class="form-group text-center">
                        <button type="submit" id="join-submit" class="btn btn-default">
                            회원가입
                        </button>
                        <button type="submit" class="btn btn-default">
                            가입취소
                        </button>
                    </div>
                </form>
            </div>
            </article>
</body>
</html>
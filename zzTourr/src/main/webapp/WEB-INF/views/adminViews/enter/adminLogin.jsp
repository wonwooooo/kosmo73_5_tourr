<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>

<title>adminLogin.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>
    
    <style>
	    html,
	    body {
	        height: 100%;
	    }
	
	    body {
	        display: -ms-flexbox;
	        display: flex;
	        -ms-flex-align: center;
	        align-items: center;
	        padding-top: 40px;
	        padding-bottom: 40px;
	    }
    </style>
    
    
    <script type="text/javascript" src="jquery-1.11.0.min.js" ></script>
    <script type="text/javascript">
    // id 저장
    
	    $(document).ready(function(){
	        // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	        
	        var userInputId = getCookie("userInputId");
	        $("input[name='adminId']").val(userInputId); 
	        if($("input[name='adminId']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
	            $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	        }
	        $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
	            if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
	                var userInputId = $("input[name='adminId']").val();
	                setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
	            }else{ // ID 저장하기 체크 해제 시,
	                deleteCookie("userInputId");
	            }
	        });
	        // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	        $("input[name='adminId']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
	            if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
	                var userInputId = $("input[name='adminId']").val();
	                setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
	            }
	        });
	    });
	    
	    
	    function setCookie(cookieName, value, exdays){
	        var exdate = new Date();
	        exdate.setDate(exdate.getDate() + exdays);
	        var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	        document.cookie = cookieName + "=" + cookieValue;
	    }
	    function deleteCookie(cookieName){
	        var expireDate = new Date();
	        expireDate.setDate(expireDate.getDate() - 1);
	        document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	    }
	    function getCookie(cookieName) {
	        cookieName = cookieName + '=';
	        var cookieData = document.cookie;
	        var start = cookieData.indexOf(cookieName);
	        var cookieValue = '';
	        if(start != -1){
	            start += cookieName.length;
	            var end = cookieData.indexOf(';', start);
	            if(end == -1)end = cookieData.length;
	            cookieValue = cookieData.substring(start, end);
	        }
	        return unescape(cookieValue);
	    }
    
    
    </script>
    

</head>
<body>

    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center"><a href="${pageContext.request.contextPath}/resources/adminTemplate/index.html"><img class="logo-img" src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/logo.png" alt="logo"></a><span class="splash-description">Please enter your user information.</span></div>
            <div style="text-align:center;"> ${message} </div>
            <div class="card-body">
            
            

            	<!-- ★★★★★ 첫 접속시 로그인 ★★★★★ -->
            	<c:if test="${in == 1}">
	               	<form method="post" action="login.trip">
	                	<div class="form-group">
	                        <input name='adminId' class="form-control form-control-lg" id="username" type="text" placeholder="Username" autocomplete="off">
	                    </div>
	                    <div class="form-group">
	                        <input name='adminPw' class="form-control form-control-lg" id="password" type="password" placeholder="Password">
	                    </div>
	                    <div style="text-align:center; color: red;"><b>${alert}</b></div>
	                    <div class="form-group">
	                        <label class="custom-control custom-checkbox">
	                            <input id="idSaveCheck" class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
	                        </label>
	                    </div>
	                    <button id='submit' type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
	                </form>
            	</c:if>
            	
            	
            	<!-- ★★★★★ 로그아웃 후 로그인 ★★★★★ -->
            	<c:if test="${in !=1}">
	            	<form method="post" action="/zzTourr/enter/login.trip">
	                	<div class="form-group">
	                        <input name='adminId' class="form-control form-control-lg" name="id" id="username" type="text" placeholder="Username" autocomplete="off">
	                    </div>
	                    <div class="form-group">
	                        <input name='adminPw' class="form-control form-control-lg" id="password" type="password" placeholder="Password">
	                    </div>
	                    <div style="text-align:center; color: red;"><b>${alert}</b></div>
	                    <div class="form-group">
	                        <label class="custom-control custom-checkbox">
	                            <input id="idSaveCheck" class="custom-control-input" type="checkbox"><span class="custom-control-label">Remember Me</span>
	                        </label>
	                    </div>
	                    <button id='submit' type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
	                </form>
            	</c:if>
            	
            </div>
            
            
            <div class="card-footer bg-white p-0  ">
            
	            <c:if test="${in == 1}">
	            
	            	<!-- ★★★★★ 첫 접속시 회원가입 ★★★★★ -->
	                <div class="card-footer-item card-footer-item-bordered">
	                    <a href="adminJoin.trip" class="footer-link">Create An Account</a>
	                </div>
	                
	                <!-- ★★★★★ 첫 접속시 비번찾기 ★★★★★ -->
	                <div class="card-footer-item card-footer-item-bordered">
	                    <a href="adminForgotPw.trip" class="footer-link">Forgot Password</a>
	                </div>
	                
	            </c:if>
	            
				<c:if test="${in != 1}">
	            
	            	<!-- ★★★★★ 로그아웃 후 회원가입 ★★★★★ -->
	                <div class="card-footer-item card-footer-item-bordered">
	                    <a href="/zzTourr/enter/adminJoin.trip" class="footer-link">Create An Account</a>
	                </div>
	                
	                <!-- ★★★★★ 로그아웃 후 비번찾기 ★★★★★ -->
	                <div class="card-footer-item card-footer-item-bordered">
	                    <a href="/zzTourr/enter/adminForgotPw.trip" class="footer-link">Forgot Password</a>
	                </div>
	                
	            </c:if>
	            
            </div>
        </div>
    </div>
  


</body>
</html>
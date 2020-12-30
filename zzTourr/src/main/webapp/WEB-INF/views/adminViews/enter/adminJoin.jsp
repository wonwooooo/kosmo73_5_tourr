<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>adminJoin.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>
    
    
    <style type="text/css">
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
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
	// 출처: https://xodgl2.tistory.com/22 [Beginning]
    
   
	$(function(){
	//아이디 중복체크
    $('#id').blur(function(){
    	$.ajax({
		type:"POST",
		url:"/zzTourr2/adminViews/enter/idCheck.trip",
		data:{"id":$('#id').val()},
		success:function(data){			//data : checkSignup에서 넘겨준 결과값
			if($.trim(data)=="YES"){
				if($('#id').val()!=''){ 
					alert("사용가능한 아이디입니다.");
				}
			}
			else{
				if($('#id').val()!=''){
				alert("중복된 아이디입니다.");
				$('#id').val('');
				$('#id').focus();
	            }
			}
	        }
	    }) 
     })

});
	
	
	$(function(){

		//비밀번호 확인
			$('#pw2').blur(function(){
			   if($('#pw1').val() != $('#pw2').val()){
			    	if($('#pw2').val()!=''){
				    alert("비밀번호가 일치하지 않습니다.");
			    	    $('#pw2').val('');
			          $('#pw2').focus();
			       }
			    }
			})  	   
		});



    </script>
    
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

</head>
<body>

    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container" action="adminInsert.trip" method='post'>
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registrations Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
            	<!-- 사번 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="adminId" id="id" required placeholder="Identification" autocomplete="off">
                </div>
                
                <div class="form-group">
                	<span id="idchk" ></span>
                </div>
                
                <!-- 비번 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pw1" name='adminPw' type="password" required placeholder="Password">
                </div>
                
            	<!-- 비번확인 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pw2" required placeholder="Confirm" type="password">
                </div>
                
                <!-- 메일 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="adminMail" required placeholder="E-mail" autocomplete="on">
                </div>
                
                <!-- 이름 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="adminName" required placeholder="Username" autocomplete="on">
                </div>
                
                <!-- 사진 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="file" name="adminImg" value='증명사진'>
                </div>

                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">Register My Account</button>
                </div>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a></span>
                    </label>
                </div>
                <div class="form-group row pt-0">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
                        <button class="btn btn-block btn-social btn-facebook " type="button">Facebook</button>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <button class="btn  btn-block btn-social btn-twitter" type="button">Twitter</button>
                    </div>
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>Already member? <button onclick="window.history.back()"><a href="" class="text-secondary">Login Here.</a></button></p>
            </div>
        </div>
    </form>

</body>
</html>
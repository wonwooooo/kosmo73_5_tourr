<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<script>
$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#userId").val()) == '' ){
            alert("아이디를 입력해주세요.");
            $("#userId").focus();
            return;
        }
    	
    	if($.trim($('#password').val())==''){
    		alert("비밀번호를 입력해주세요.");
    		$('#password').focus();
    		return;
    	}
    	
    	if($.trim($('#password').val()) != $.trim($('#password2').val())){
    		alert("비밀번호가 일치하지 않습니다.");
    		$('#userPass2').focus();
    		return;
    	}
    	
    	if($.trim($('#password').val().length < 8)) {
    		alert("비밀번호는 4자 이상으로 설정해야 합니다.");
    		$('#password').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#userName').val())==''){
    		alert("이름을 입력해주세요.");
    		$('#userName').foucs();
    		return;
    	}
       
        // 자료를 전송합니다.
        document.customerInsert.submit();
	});
	
	//아이디 중복체크 (최근에는 키이벤트 안함)
	
	$('#userId').keyup(function(){
        // alert('a');
       	$.ajax({
       		type : 'post',	// 전송방식
       		async : true,	// 비동기통신
       		url : 'idCheck.trip', // *** 요청(request)
       		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 한글처리
       		data : { 'userId' : $('#userId').val() },
       		success : function(result){
       			$('#idCheck').text(result);
       		},
       		error : function(err){
       			console.log(err);
       		} //에러뜨면 err로 받아서 콘솔로 찍기
       	});
	})
})



</script>


<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
        
        <li><a href>마이페이지
          </a>
          
          <ul>
            <li><a href="customerReservList.trip">구매내역</a></li>
<!--             <li><a href="customerCart.trip">장바구니</a></li> -->
            <li><a href="customerProdRevboardList.trip">My 상품후기</a></li>
            <li><a href="customerQnaList.trip">1:1 문의</a></li>
            <li><a href="customerInfo.trip">개인정보</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <div id="main_content">
    
    <div class="column4">
      <div class="title">회원가입</div>
    
      <div class="contact_tab">
        <div class="form_contact">
          <form action="customerInsert.trip" method="get">
          <div class="form_row_contact">
            <label class="left">이름: </label>
            <input type="text" class="form_input_contact" id="userName" name="userName"/>
          </div>
          <div class="form_row_contact">
            <label class="left">아이디: </label>
            <input type="text" class="form_input_contact" id="userId" name="userId"/>
            <sapn id="idCheck" style="width:150px;color:blue"></span>
          </div>
          <div class="form_row_contact">
            <label class="left">비밀번호: </label>
            <input type="text" class="form_input_contact" id="password" name="password"/>
          </div>
          <div class="form_row_contact">
            <label class="left">비밀번호 확인: </label>
            <input type="text" class="form_input_contact" id="password2" name="password2"/>
          </div>
          <div class="form_row_contact">
            <label class="left">휴대폰 번호: </label>
            <input type="text" class="form_input_contact" id="userTel" name="userTel"/>
          </div>
          <div class="form_row_contact">
            <label class="left">국적: </label>
            <input type="text" class="form_input_contact" id="nation" name="nation"/>
          </div>
          <div class="form_row_contact">
            <label class="left">나이: </label>
            <input type="text" class="form_input_contact" id="age" name="age"/>
          </div>
          
          <div class="form_row_contact">
            <label class="left">성별: </label>
<!--             <input type="text" class="form_input_contact" id="gender" name="gender"/> -->
            <select class="form_select">
            <option>남자</option>
            <option>여자</option>
          </select>
          </div>
          <div class="form_row_contact">
            <label class="left">이메일: </label>
            <input type="text" class="form_input_contact" id="email" name="email"/>
          </div>
<!--           <div class="form_row_contact"> -->
<!--             <label class="left">Message: </label> -->
<!--             <textarea name="" rows="" cols="" ></textarea> -->
<!--           </div> -->
          <div style="float:right; padding:10px 25px 0 0;">
<!--             <input type="image" src="/zTrip/resources/customerimg/send.gif"/> -->
            <input type="submit" name="confirm" id="confirm" value="회원가입"/>
          	<input type="reset" name="reset" value="취   소"/>
         
          </div>
   </form>
        </div>
      </div>
    </div>
    <!-- end of column four -->
    
   <div>

    
  </div>
  
  <!-- end of main_content -->
  <div id="footer">
    <div id="copyright">
      <div style="float:left; padding:3px;"><a href="http://all-free-download.com/free-website-templates/"><img src="images/footer_logo.gif" width="42" height="35" alt="" border="0" /></a></div>
      <div style="float:left; padding:14px 10px 10px 10px;"> Company name.&copy; All Rights Reserved 2008 - By <a href="http://csscreme.com" style="color:#772c17;">csscreme</a></div>
    </div>
    <ul class="footer_menu">
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Home </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Selling Homes </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Buying Homes </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Renting Homes</a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> RSS </a></li>
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Contact </a></li>
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

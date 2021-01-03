<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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
    	
    	if($.trim($('#password').val())==''){
    		alert("비밀번호를 입력해주세요.");
    		$('#password').focus();
    		return;
    	}
    	
    	if($.trim($('#password').val()) != $.trim($('#password2').val())){
    		alert("비밀번호가 일치하지 않습니다.");
    		$('#userPass2').focus();
    		return false;
    	}
    	
    	if($.trim($('#password').val()).length < 4) {
     		alert("비밀번호는 4자 이상으로 설정해야 합니다.");
     		$('#password').focus();
     		return false;
     	}
     	if($.trim($('#userTel').val())=='' || $.trim($('#userTel').val()).length > 15){
    		alert("연락처는 필수입력이며, 15자 이내로 입력 부탁드립니다.");
    		$('#userTel').focus();
    		return false;
    	}
    	
     	if(isNaN($.trim($('#userTel').val()))) {
     		alert("연락처는 숫자로만 입력 부탁드립니다");
     		$('#userTel').focus();
     		return false;
     	}
     	if(isNaN($.trim($('#age').val()))) {
     		alert("나이는 숫자로만 입력 부탁드립니다");
     		$('#age').focus();
     		return false;
     	}
     	if($.trim($('#age').val())==''){
    		alert("나이를 입력해주세요.");
    		$('#age').focus();
    		return false;
    	}
    	if($.trim($('#userName').val())==''  || $.trim($('#userName').val()).length > 20 || !($.trim($('#userName').val()).match(/^[가-힣a-zA-Z]+$/))){
    		alert("이름은 필수입력이며, 20자 이내로 입력 부탁드립니다. 한글 및 영어 대소문자로 입력해주세요.");
    		$('#userName').focus();
    		return false;
    	}
    	if($.trim($('#nation').val())==''  || $.trim($('#nation').val()).length > 20 || !($.trim($('#nation').val()).match(/^[가-힣a-zA-Z]+$/))){
    		alert("국적은 필수입력이며, 20자 이내로 입력 부탁드립니다. 한글 및 영어 대소문자로 입력해주세요.");
    		$('#nation').focus();
    		return false;
    	}
    	if($.trim($('#email').val())==''  || $.trim($('#email').val()).length > 30 || !($.trim($('#email').val()).match(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/))){
    		alert("이메일은 필수입력이며, 30자 이내로 입력 부탁드립니다. 이메일 형식을 준수해주세요.");
    		$('#email').focus();
    		return false;
    	}
    	
    	       
    	  alert("회원정보가 변경되었습니다.")
        	
          $('#insertjoin').submit();
	});
	
})

</script>


<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="../mainViews/mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo1.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
       <li><a href="../mainViews/mainlodgelistho.trip?page=1">호텔</a></li>
         <li><a href="../mainViews/mainlodgelistmo.trip?page=1">모텔</a></li>
          <li><a href="../mainViews/mainlodgelistge.trip?page=1">게스트하우스</a></li>
          <li><a href="../mainViews/mainlodgelist.trip?page=1">펜션</a></li>
        
        <li><a>커뮤니티
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
           
            <li><a href="../mainViews/mainfreeboardlist.trip">자유게시판</a></li>
          </ul>
          </li>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        
        <li><a href>마이페이지
          </a>
          
          <ul>
           <li><a href="../customerViews/customerReservList.trip?userId=${sessionScope.loginId}">구매내역</a></li>
     
<%--             <li><a href="../customerViews/customerProdRevboard.trip?userId=${sessionScope.loginId}">My 상품후기</a></li> --%>
            
            <li><a href="../customerViews/customerInfo.trip?userId="${sessionScope.login}">개인정보</a></li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
  <div id="main_content">
<c:if test="${sessionScope.login != null }">
	 <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>${sessionScope.login }님, 환영합니다!</span> </div>
          <div class="form">
    
      <div class="form_row">
          <label style="float:center;">오늘도 기분좋은 하루 되세요.</label>
     </div>
     <form Id="logoutform" name="logoutform" action="mainlogOut.trip" method="post">
     <div style="float:right; padding:10px 25px 0 0;">
        <input type="submit" value="로그아웃" />
      </div>
      </form>
       </div>
       </div>
        <div class="bottom_left_box"> </div>
      </div>
       </c:if>

</div>

     <!-- end of column one -->
	
	
    <div class="column4">
      <div class="title">회원정보 수정</div>
      <div class="contact_tab">
        <div class="form_contact">
        
        <form action="customerModify.trip" method="post" id="insertjoin">
         <label>고객님의 소중한 개인정보 조회가 가능하며, 하단부 폼을 통해 비밀번호 변경이 가능합니다.</label>
          <div class="form_row_contact">
            <label class="left">이름: </label>
            <input type="text" class="form_input_contact" id="userName" name="userName" value="${sessionScope.login}"/>
          </div>
          <div class="form_row_contact">
            <label class="left">아이디: </label>
            <input type="text" class="form_input_contact" name="userId" value="${sessionScope.loginId}" readonly/>
          </div>
          <div class="form_row_contact">
            <label class="left">휴대폰 번호: </label>
            <input type="text" class="form_input_contact" id="userTel" name="userTel" value="${sessionScope.loginTel}"/>
          </div>
          <div class="form_row_contact">
            <label class="left">새 비밀번호:  </label>
            <input type="password" class="form_input_contact" id="password" name="password" /></br>
          </div> 	
          <div class="form_row_contact">
          	<label class="left">비밀번호 재입력: </label>
            <input type="password" class="form_input_contact" id="password2" name="password2"/></br>
          </div>
 
          <div class="form_row_contact">
            <label class="left">국적: </label>
            <input type="text" class="form_input_contact" id="nation" name="nation" value="${users.nation }" />
          </div>
            <div class="form_row_contact">
            <label class="left">나이: </label>
            <input type="text" class="form_input_contact" id="age" name="age" value="${users.age }" />
          </div>
          <div class="form_row_contact">
            <label class="left">성별: </label>
            <input type="text" class="form_input_contact" id="gender" name="gender" value="${users.gender }" readonly />
          </div>
          <div class="form_row_contact">
            <label class="left">이메일: </label>
            <input type="text" class="form_input_contact" id="email" name="email" value="${users.email }" />
          </div>
          
          <div style="float:right; padding:10px 25px 0 0;">
<!--             <input type="image" src="/zTrip/resources/customerimg/send.gif"/> -->
          <input type="button" name="confirm" id="confirm" value="회원정보 변경"/>
          	<input type="reset" name="reset" value="취   소"/>
          </div>
        </div>
		</form>
      </div>
    </div>
    <!-- end of column four -->
    
 
  <!-- end of main_content -->
   <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>
</div>
<!-- end of main_container -->

</body>
</html>

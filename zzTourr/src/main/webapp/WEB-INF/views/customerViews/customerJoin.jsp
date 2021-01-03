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
            return false;
        }
    	if( $.trim($("#userId").val()) > 10 ){
            alert("아이디는 10자 이내로 설정해주세요.");
            $("#userId").focus();
            return false;
        }
    	if($.trim($('#password').val())==''){
    		alert("비밀번호를 입력해주세요.");
    		$('#password').focus();
    		return false;
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
    		//alert($.trim($('#userTel').val()));
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
    		$('#userName').foucs();
    		return false;
    	}
    	if($.trim($('#nation').val())==''  || $.trim($('#nation').val()).length > 20 || !($.trim($('#nation').val()).match(/^[가-힣a-zA-Z]+$/))){
    		alert("국적은 필수입력이며, 20자 이내로 입력 부탁드립니다. 한글 및 영어 대소문자로 입력해주세요.");
    		$('#nation').foucs();
    		return false;
    	}
    	if($.trim($('#email').val())==''  || $.trim($('#email').val()).length > 30 || !($.trim($('#email').val()).match(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/))){
    		alert("이메일은 필수입력이며, 30자 이내로 입력 부탁드립니다. 이메일 형식을 준수해주세요.");
    		$('#email').foucs();
    		return false;
    	}
       alert("회원가입을 축하드립니다.")
      	
        $('#insertjoin').submit();
	});
	
	//아이디 중복체크 (최근에는 키이벤트 안함)
	
	$('#userId').keyup(function(){
        // alert('a');
       	$.ajax({
       		type : 'post',	// 전송방식
       		async : true,	// 비동기통신
       		url : 'idChec.trip', // *** 요청(request)
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
        
      
      </ul>
    </div>
  </div>
  <div id="main_content">
    <div class="column1">
     <c:if test="${sessionScope.login == null }">
     <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>로그인하려면</span> </div>
            <div class="box_title"><span>밑의 버튼을 클릭해주세요</span> </div>

            <div style="float:right; padding:10px 25px 0 0;">
                <a href="mainlogin.trip"><input type="button" value="로그인" /></a>
            </div>
       <div class="form_row">
              <a href="mainpassmiss.trip" style="text-decoration: none; color:#615357;"><label style="float:center;">아이디/비밀번호 찾기</label></a>
            
            </div>
            
             <div class="form_row">
             
           </div>
          </div>
	 <div class="bottom_left_box"> </div>
	</div>
	   </c:if>
	   </div>
    <div class="column4">
      <div class="title">회원가입</div>
    
      <div class="contact_tab">
        <div class="form_contact">
          <form action="customerInsert.trip" method="post" id="insertjoin">
          <div class="form_row_contact">
            <label class="left">이름: </label>
            <input type="text" class="form_input_contact" id="userName" name="userName"/>
          </div>
          <div class="form_row_contact">
            <label class="left">아이디: </label>
            <input type="text" class="form_input_contact" id="userId" name="userId"/>
            <span id="idCheck" style="width:150px;color:blue"></span>
          </div>
          <div class="form_row_contact">
            <label class="left">비밀번호: </label>
            <input type="password" class="form_input_contact" id="password" name="password"/>
          </div>
          <div class="form_row_contact">
            <label class="left">PW확인: </label>

            <input type="password" class="form_input_contact" id="password2" name="password2"/>
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
            <select class="form_select" name="gender">
            <option value="남자">남자</option>
            <option value="여자">여자</option>
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
            <input type="button" name="confirm" id="confirm" value="회원가입"/>
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
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
  </div>
</div>
<!-- end of main_container -->
</body>
</html>

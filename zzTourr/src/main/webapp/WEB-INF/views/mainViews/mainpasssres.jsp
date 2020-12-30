<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainadmin.css" />
<script>
	window.onload = function(){

		document.getElementById('Submit').onclick = check;	
	}
	
	function check(){
		if(document.getElementById('loginform').userId.value==""){
			alert("ID를 입력하세요.")
			document.getElementById('loginform').focus();
			return false;
		}
		
		if(document.getElementById('loginform').password.value==""){
			alert("패스워드를 입력하세요.")
			document.getElementById('loginform').focus();
			return false;
		}
		
		document.getElementById('loginform').submit();//전송
		
	}
	
	
</script>
</head>

<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo1.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
             <ul>
          
      <li><a href="mainlodgelistho.trip?page=1">호텔</a></li>
         <li><a href="mainlodgelistmo.trip?page=1">모텔</a></li>
          <li><a href="mainlodgelistge.trip?page=1">게스트하우스</a></li>
          <li><a href="mainlodgelist.trip?page=1">펜션</a></li>
        
        <li><a>커뮤니티
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
           
            <li><a href="mainfreeboardlist.trip">자유게시판</a></li>
          </ul>
          </li>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->	
    <c:if test="${sessionScope.login != null }">
     <li><a>마이페이지</a>
     <ul>
            <li><a href="customerReserv.trip">구매내역</a></li>
            <li><a href="customerCart.trip">장바구니</a></li>
            <li><a href="customerProdRevboard.trip">My 상품후기</a></li>
            <li><a href="customerQna.trip">1:1 문의</a></li>
            <li><a href="customerModify.trip">개인정보</a></li>
          </ul>
     </li>
     </c:if>
      </ul>
    </div>
  </div>
  <div id="main_content">
        <div class="admin_login">
      <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>고객님! 죄송합니다...</span></div>
       
          <div class="form">
     
               <div class="form_row">
                <label style="float:center;">해당 객실은 마감으로 예약이 안됩니다.</label>
                </div>
                 <div class="form_row">
                 <label style="float:center;">죄송합니다만 가능한 객실로</label>
                 </div>
               <div class="form_row">
                 <label style="float:center;">다시 예약 부탁드립니다</label>
                 </div>
          </div>
        </div>
        <div class="bottom_left_box"> </div>
      </div>
    </div>
  </div>
  <!-- end of main_content -->
 <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>
 
 
 </body>
</html>
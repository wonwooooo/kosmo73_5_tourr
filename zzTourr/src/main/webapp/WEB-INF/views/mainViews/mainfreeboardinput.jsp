<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<script type="text/javascript" src="/zzTourr/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/zzTourr/resources/js/mainfreeyouhyo.js"></script>
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
            <li><a href="../customerViews/customerReservList.trip?userId=${sessionScope.loginId}&page=1">구매내역</a></li>
            
            <li><a href="../customerViews/customerInfo.trip?userId=${sessionScope.loginId}">개인정보</a></li>
          </ul>
     </li>
     </c:if>
      </ul>
    </div>
  </div>
 <div id="main_content">
    <div class="column1">
     
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

         <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>  
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>  
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
      <p>&nbsp; </p>
 </div>   
  <div class="column4">
      <div class="title">Contact Form</div>
    <form id="saveform" name="saveform" action="mainfreeboardsave.trip" method="get">
      <div class="contact_tab">
        <div class="form_contact">
          <div class="form_row_contact">
            <label class="left">작성자: </label>
            <input type="label" name = "userName" value="${sessionScope.login }" class="form_input_contact"/>
          </div>
          <div class="form_row_contact">
            <label class="left">제목: </label>
            <input type="text" name = "title" id="title" class="form_input_contact"/>
          </div>
         
          <div class="form_row_contact">
            <label class="left">내용: </label>
            <textarea name="content" id="content" rows="" cols="50" ></textarea>
          </div>
          
          <input type="hidden" name="category" value="자유게시판"/>
          <input type="hidden" name="userId" value="${sessionScope.loginId }"/>
          
          <div style="float:right; padding:10px 25px 0 0;">
           
          </div>
        </div>
        <div class="form_row_contact">
          <input type="submit" value="작성" id="submitinput"/> &nbsp; <input type="reset" value="취소"/>
            </div>        
      </div>
      </form>
    </div>
  <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>
</body>
</html>
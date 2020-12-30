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
</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
       <c:if test="${sessionScope.login != null }">
        <li><a href>마이페이지
          </a>
          
          <ul>
            <li><a href="customerReservList.trip">구매내역</a></li>
<!--             <li><a href="customerCart.trip">장바구니</a></li> -->
            <li><a href="customerProdRevboardList.trip">My 상품후기</a></li>
<!--             <li><a href="customerQnaList.trip">1:1 문의</a></li> -->
            <li><a href="customerInfo.trip?userId=${sessionScope.loginId }">개인정보</a></li>
          </ul>
        </li>
        </c:if>
      </ul>
    </div>
  </div>
  <div id="main_content">

    <div class="column4">
      <div class="title">회원정보 수정</div>
      <div class="contact_tab">
        <div class="form_contact">
        
        <form action="customerModify.trip" method="get">
          <div class="form_row_contact">
            <label class="left">이름: </label>
            <input type="text" class="form_input_contact" name="userName" value="${sessionScope.login}"/>
          </div>
          <div class="form_row_contact">
            <label class="left">아이디: </label>
            <input type="text" class="form_input_contact" name="userId" value="${sessionScope.loginId}"/>
          </div>
          <div class="form_row_contact">
            <label class="left">휴대폰 번호: </label>
            <input type="text" class="form_input_contact" name="userTel" value="${sessionScope.loginTel}"/>
          </div>
          <div class="form_row_contact">
            <label class="left">비밀번호 변경:  </label>
            <input type="password" class="form_input_contact" name="password" /></br>
            	<div align="left">새 비밀번호</div><br/>
            	<div>비밀번호 다시 입력</div><br/>
            <input type="password" class="form_input_contact" name="password2"/></br>
          </div>
          <div class="form_row_contact">
            <label class="left">국적: </label>
            <input type="text" class="form_input_contact"/ name="nation" value="${users.nation }">
          </div>
          <div class="form_row_contact">
            <label class="left">성별: </label>
            <input type="text" class="form_input_contact"/ name="gender" value="${users.gender }">
          </div>
          <div class="form_row_contact">
            <label class="left">이메일: </label>
            <input type="text" class="form_input_contact"/ name="email" value="${users.email }">
          </div>
<!--           <div class="form_row_contact"> -->
<!--             <label class="left">Message: </label> -->
<!--             <textarea name="" rows="" cols="" ></textarea> -->
<!--           </div> -->
          <div style="float:right; padding:10px 25px 0 0;">
<!--             <input type="image" src="/zTrip/resources/customerimg/send.gif"/> -->
            <input type="submit"  id="confirm" value="수정하기">
          	<input type="reset" name="reset" value="취   소">
          </div>
        </div>
		</form>
      </div>
    </div>
    <!-- end of column four -->
    
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
      
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>

</html>

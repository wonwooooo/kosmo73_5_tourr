 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>상품후기 작성</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerAdmin.css" />
</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
        
        <<li><a href>마이페이지
          </a>
          
          <ul>
            <li><a href="customerReservList.trip">구매내역</a></li>
<!--             <li><a href="customerCart.trip">장바구니</a></li> -->
            <li><a href="customerProdRevboardList.trip">My 상품후기</a></li>
<!--             <li><a href="customerQnaList.trip">1:1 문의</a></li> -->
            <li><a href="customerInfo.trip">개인정보</a></li>
          </ul>
        </li>
        
      </ul>
    </div>
  </div>
  <div id="main_content">
    <div id="admin_header">
      <div class="admin_addoffer_title">상품후기 작성</div>
      <div class="right_buttons">
<!--         <div class="right_button"><a href="http://all-free-download.com/free-website-templates/">등록</a></div> -->
<!--         <div class="right_button"><a href="http://all-free-download.com/free-website-templates/">1:1문의내역 보기</a></div> -->
<!--          <input style="float:right;" type="button" value="1:1문의내역 보기"/> -->
      </div>
    </div>
    <div id="admin_header_border"></div>
    <div class="add_tab">
      <div class="form_contact">
       <form action="customerInsertProdRev.trip" method="get">
        <div class="adminform_row_contact">
          <input type="hidden" name="resId" value="${resId }" />
  		 <input type="hidden" name="productId" value="${productId }" />
  		  <input type="hidden" name="userId" value="${sessionScope.loginId }" />
  		    <input type="hidden" name="userName" value="${sessionScope.login }" />
         <div class="adminform_row_contact">
          <label>평점: <span>1~5 까지 원하시는 평점을 남겨보세요</span></label>
         <select name="grade">
         <option value="1">1</option>
          <option value="2">2</option>
           <option value="3">3</option>
           <option value="4">4</option>
          <option value="5">5</option>
         </select>
         
        </div>
        <div class="adminform_row_contact">
          <label class="adminleft">상품 후기: </label>
          <textarea name="revContent" rows="" cols="" ></textarea>
        </div>
        </div>

        <div style="float:right; padding:10px 25px 0 0;">

          <input style="float:right;" type="submit" value="등 록"/>       
        </div>
        </form>
      </div>
    </div>
    ${productId } ${resId }
    <div class="admin_footer_help"> Admin help section here Admin help section here Admin help section here Admin help section here Admin help section here </div>
  </div>
  <!-- end of main_content -->
  <div id="footer">
    <div id="copyright">
      <div style="float:left; padding:3px;"><a href="http://all-free-download.com/free-website-templates/"><img src="images/footer_logo.gif" width="42" height="35" alt="" border="0" /></a></div>
      <div style="float:left; padding:14px 10px 10px 10px;"> Company name.&copy; All Rights Reserved 2008 - By <a href="http://csscreme.com" style="color:#772c17;">csscreme</a></div>
    </div>
    <ul class="footer_menu">
      <li><a href="http://all-free-download.com/free-website-templates/" class="nav_footer"> Home </a></li>
      
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

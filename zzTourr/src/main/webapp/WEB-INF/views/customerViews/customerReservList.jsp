<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>예약내역</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<!-- <link rel="stylesheet" type="text/css" href="/zTrip/resources/customercss/style.css" /> -->
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
</head>
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
      <div class="title" style="float:left;">
        <div style="float:left;">예약내역</div>
<!--         <div style="float:right; font-size:10px;color:#d8325d; padding-top:2px;">display: <a href="list2.html"><img src="images/list_style3_a.gif" border="0" /></a> <a href="list1.html"><img src="images/list_style1.gif" border="0" /></a> <a href="list.html"><img src="images/list_style2.gif" border="0" /></a> </div> -->
      </div>
      <table style="clear:both; width:695px; margin-top:10px;" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <th>예약일</th>
          <th>상품명</th>
          <th>결제금액</th>
          <th>인원</th>          
          <th>이용시작일</th>
          <th>예약상태</th>
          <th>결제</th>
          <th>후기</th>
        </tr>
        
		<c:forEach items="${resList }" var="reservation"> 
        <tr class="color1" onmouseout="style.backgroundColor='#F3F5F6'" onclick="document.location.href='#'" onmouseover="this.style.cursor='pointer'; style.backgroundColor='#ffffff'" title="Vezi detaliile anuntului" >
		
          <td><fmt:formatDate value="${reservation.resDate2}" pattern="yyyy/MM/dd"/></td>
          <td>${reservation.category}</td>
         
          <td>${reservation.reservPrice}</td>
          <td>${reservation.peopleNum }</td>
          <td>${reservation.checkInDate2 }</td>
           <td>${reservation.resState }</td>
          <form action="customerPayment.trip" method="get">
          <input type="hidden" name="resId" value="${reservation.resId }"/>
          <input type="hidden" name="payPrice" value="${reservation.reservPrice }"/>
          <td><input type="submit" value="결제하기"/></td>
			</form>      
<!--           <td><input type="button" value="후기작성"/></td> -->
  				  <form action="customerInputProdRev.trip" method="get">	
  				 <input type="hidden" name="resId" value="${reservation.resId }"/>
          <input type="hidden" name="productId" value="${reservation.productId }"/>
		  <td><input type="submit" value="후기작성" /></td>
		  </form>
        </tr>
       </c:forEach> 
        

        </tr>
        
        
      </table>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="http://all-free-download.com/free-website-templates/">2</a><a href="http://all-free-download.com/free-website-templates/">3</a><a href="http://all-free-download.com/free-website-templates/">4</a><a href="http://all-free-download.com/free-website-templates/">5</a><a href="http://all-free-download.com/free-website-templates/">6</a><a href="http://all-free-download.com/free-website-templates/">7</a><a href="http://all-free-download.com/free-website-templates/">10</a><a href="http://all-free-download.com/free-website-templates/">11</a><a href="http://all-free-download.com/free-website-templates/">>></a> </div>
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
      
    </ul>
  </div>
</div>
<!-- end of main_container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>

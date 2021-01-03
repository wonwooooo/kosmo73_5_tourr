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
            
            <li><a href="../customerViews/customerInfo.trip?userId=${sessionScope.loginId}">개인정보</a></li>
          </ul>
        </li>

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
              <label style="float:center;">회원가입 </label>
           </div>
          </div>
	 <div class="bottom_left_box"> </div>
	</div>
	   </c:if>
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


     <!-- end of column one -->
    <div class="column4">
      <div class="title" style="float:left;">
        <div style="float:left;">예약내역</div>
<!--         <div style="float:right; font-size:10px;color:#d8325d; padding-top:2px;">display: <a href="list2.html"><img src="images/list_style3_a.gif" border="0" /></a> <a href="list1.html"><img src="images/list_style1.gif" border="0" /></a> <a href="list.html"><img src="images/list_style2.gif" border="0" /></a> </div> -->
      </div>
      <table style="clear:both; width:695px; margin-top:10px;" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <th>예약일</th>
          <th>숙소명</th>
           <th>객실명</th>
          <th>결제금액</th>
          <th>인원</th>          
          <th>체크인</th>

          <th>예약상태</th>
          <th>결제</th>
          <th>후기</th>
        </tr>
        
		<c:forEach items="${resList }" var="reservation"> 
        <tr class="color1" onmouseout="style.backgroundColor='#F3F5F6'" onclick="document.location.href='#'" onmouseover="this.style.cursor='pointer'; style.backgroundColor='#ffffff'" title="Vezi detaliile anuntului" >
		
          <td><fmt:formatDate value="${reservation.resDate2}" pattern="yyyy/MM/dd"/></td>
          <td>${reservation.checkInDate}</td>
			<td>${reservation.checkOut}</td>
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
  				
  				 <input type="hidden" name="resId" value="${reservation.resId }"/>
          <input type="hidden" name="productId" value="${reservation.productId }"/>
		  <td><a href="customerInputProdRev.trip?productId=${reservation.productId }&resId=${reservation.resId }"><input type="submit" value="후기작성" /></a></td>
		 
        </tr>
       </c:forEach> 
      </table>
     
     <div class="pagination"> 
      <c:if test="${pageNo}>3 ">
      			${startNo} = ${ pageNo} -2 
      			${endNo} = ${pageNo} + 2 
      			</c:if>
  		<c:if test="${pageNo} >  ${totalcount}-3">
      			${startNo} = ${pageNo} -4 
      			${endNo} = ${totalcount }
      	</c:if>

      <c:forEach var='i' begin='${startNo }' end='${endNo }'>
		
		    <a href="customerReservList.trip?userId=${sessionScope.loginId}&page=${i }">${i }</a>
			</c:forEach>
	  <p>&nbsp; </p>
  </div>
         <div class="pagination"> <a href="customerReservList.trip?userId=${sessionScope.loginId}&page=1"><<</a><a href="customerReservList.trip?userId=${sessionScope.loginId}&page=${pNo }"><</a><a href="customerReservList.trip?userId=${sessionScope.loginId}&page=${nNo }">></a><a href="customerReservList.trip?userId=${sessionScope.loginId}&page=${totalcount }">>></a></div>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<script type="text/javascript" src="/zzTourr/resources/js/jquery-3.5.1.min.js"></script>
    <script>
      $(function(){
    	  $('.intro').hide();
    	  $('.hideButton').click(function(){
    		  $(this).next().hide();
    			})	
    			$('.showButton').click(function(){
    				$(this).next().next().show();
    			})	
      });
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
            <li><a href="../customerViews/customerReservList.trip?userId=${sessionScope.loginId}&page=1">구매내역</a></li>
            
            <li><a href="../customerViews/customerInfo.trip?userId=${sessionScope.loginId}">개인정보</a></li>
          </ul>
     </li>
     </c:if>
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
              <a href="../customerViews/customerJoin.trip"  style="text-decoration: none; color:#615357;"><label style="float:center;">회원가입 </label></a>
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
      <div class="title">숙소/객실 소개 </div>
    </div>
    <!-- end of column four -->
    <div class="column2" style="background-color:#f3f5f6; margin-left:5px;">
      <div class="big_pic"><img src="/zzTourr/resources/hotelUpload/${lodge.imgName}"  width="282" height="212" alt="" class="img_big_pic" /></div>
      <div class="pictures_thumbs">
       
 </div>
    </div>
    <!-- end of column two -->
    <div class="column3">
      <div class="main_text_box">
        <h1>${lodge.lodName }</h1>
        <p> ${lodge.lodCont } </p>
      </div>
     
     </div>
      <div class="column2">
      <div class="title2">예약하기:</div>
      <div class="details_list">
        <ul>
         <c:forEach items="${roomList }" var="room">
          <li id='rooms'><span>${room.roomName}:</span> 
           <input type="button" class="showButton" value="사진보기" style="width:80;height:17;FONT-SIZE: 8pt"/>  
 			<input type="button" class="hideButton" value="사진닫기" style="width:80;height:17;FONT-SIZE: 8pt"/>	 
	  <p class="intro">		
          <img src="/zzTourr/resources/hotelUpload/${room.imgName}" width="282" height="212"/>
          </p>
          	<p>${room.roomCont}</p>
          	<p>최대인원 : ${room.maxPeople}명</p>
          	<p>성수기요금 : ${room.peakPrice}원</p>
          	<p>비수기요금 : ${room.offPrice}원</p>
          	<p><a href="mainloreservation.trip">
          	<c:if test="${sessionScope.login != null }">
      		<form action="mainloreservation.trip" method="get">
      		<input type="hidden" name="category" value="${lodge.lodCate}"/> 
      		<input type="hidden" name="reservName" value="${sessionScope.login}"/> 
      		<input type="hidden" name="reservTel" value="${sessionScope.loginTel}"/> 
      		<input type="hidden" name="userId" value="${sessionScope.loginId}"/> 
      		<input type="hidden" name="productIdi" value="${lodge.lodId}"/> 
      		<input type="hidden" name="roomId" value="${room.productId}"/> 
      		<input type="hidden" name="peakPrice" value="${room.peakPrice }"/>
      		<input type="hidden" name="offPrice" value="${room.offPrice }"/>
      		<input type="hidden" name="peakSumStart" value="${lodge.lodName }"/>
      		<input type="hidden" name="peakSumExit" value="${room.roomName }"/>
      		<input type="hidden" name="peakWinStart" value="${lodge.peakWinStart }"/>
      		<input type="hidden" name="peakWinExit" value="${lodge.peakWinExit }"/>
      		<input type="hidden" name="maxPeople" value="${room.maxPeople }"/>
          	<input type="submit" value="예약하기" style="width:100;height:17;FONT-SIZE: 8pt"/>
          	</form>
          	</c:if></a>&nbsp;
          	</p>
          </li>
            </c:forEach>
        </ul>
      </div>
      </div>
       <div class="column3">
      <div class="title2">세부사항:</div>
       <div class="details_list">
        <ul>
          <li><span>주소:</span> ${lodge.lodAddr } </li>
          <li><span>연락처:</span> ${lodge.lodTel } </li>
          <li><span>편의시설:</span> ${lodge.lodConven }</li>
          <li><span>특이사항:</span>숙소 사정에 따라 성수기 금액이 반영될 수 있습니다</li>
       
        </ul>
      </div>
      </div>
      <!-- end of column three -->
           <div class="column4">
        <div class="title2">고객후기</div>
       <div class="details_list">
     <c:forEach items="${RevboList }" var="productrevbo">
        <div class="offer_info"> <span>일시 : <fmt:formatDate value="${productrevbo.revDate }" pattern="yyyy/MM/dd"/> &nbsp;&nbsp; 이름 : ${productrevbo.userName }  &nbsp;&nbsp;
         별점 : <c:if test="${productrevbo.grade == 5 }">★★★★★</c:if><c:if test="${productrevbo.grade == 4 }">★★★★</c:if>
         <c:if test="${productrevbo.grade == 3 }">★★★</c:if><c:if test="${productrevbo.grade == 2 }">★★</c:if>
         <c:if test="${productrevbo.grade == 1 }">★</c:if>
         </span>
          <p class="offer"> ${productrevbo.revContent } </p>
        </div>
	 </c:forEach>
</div>
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
		
		    <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=${i }">${i }</a>
			</c:forEach>
	  <p>&nbsp; </p>
  </div>
         <div class="pagination"> <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1"><<</a><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=${pNo }"><</a><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=${nNo }">></a><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=${totalcount }">>></a></div>
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
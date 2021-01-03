<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>re:ko</title>

<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />

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
 </div>    
<%-- <img src='/hWebBoard1/resources/upload/${board.b_fname}' width='400'> --%>
      <!-- end of column one -->
    <!-- end of column three -->
    <div class="column4">
      <div class="title">최신 호텔 정보</div>
       <c:forEach items="${hoList }" var="lodge">
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1"><img src="/zzTourr/resources/hotelUpload/${lodge.imgName}" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>${lodge.lodName }</span>
          <p class="offer"> ${lodge.lodCont } </p>
          <div class="more"><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1">...more</a></div>
        </div>
      </div>
    </c:forEach>
    </div>
    
      <div class="column4">
      <div class="title">최신 모텔 정보</div>
         <c:forEach items="${moList }" var="lodge">
     <div class="offer_box_wide"> <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1"><img src="/zzTourr/resources/hotelUpload/${lodge.imgName}" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>${lodge.lodName }</span>
          <p class="offer"> ${lodge.lodCont } </p>
          <div class="more"><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1">...more</a></div>
        </div>
      </div>
   </c:forEach>
       </div>
       
        <div class="column4">
      <div class="title">최신 게스트하우스 정보</div>
       <c:forEach items="${geList }" var="lodge">
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1"><img src="/zzTourr/resources/hotelUpload/${lodge.imgName}" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>${lodge.lodName }</span>
          <p class="offer"> ${lodge.lodCont } </p>
          <div class="more"><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1">...more</a></div>
        </div>
      </div>
  	</c:forEach>
       </div>
       
        <div class="column4">
      <div class="title">최신 펜션 정보</div>
       <c:forEach items="${penList }" var="lodge">
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1"><img src="/zzTourr/resources/hotelUpload/${lodge.imgName}" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>${lodge.lodName }</span>
          <p class="offer"> ${lodge.lodCont } </p>
          <div class="more"><a href="mainlodgedetail.trip?lodId=${lodge.lodId }&page=1">...more</a></div>
        </div>
      </div>
    </c:forEach>
       </div>
  

      <!-- end of column three -->
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
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
    <div id="logo"> <a href="mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
        <li><a href="mainguidelist.trip?page=1">가이드</a></li>
        <li><a>숙소
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
             <li><a href="mainlodgelistho.trip?page=1">호텔</a></li>
            <li><a href="mainlodgelistmo.trip?page=1">모텔</a></li>
            <li><a href="mainlodgelistge.trip?page=1">게스트하우스</a></li>
            <li><a href="mainlodgelist.trip?page=1">펜션</a></li>
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        </li>
        <li><a>커뮤니티
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="mainrvboardlist.trip">리뷰게시판</a></li>
            <li><a href="mainfreeboardlist.trip">자유게시판</a></li>
          </ul>
          </li>
        
        <li><a>유용한 정보
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="http://all-free-download.com/free-website-templates/">지도</a></li>
           
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
        </li>
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
 </div>    
<%-- <img src='/hWebBoard1/resources/upload/${board.b_fname}' width='400'> --%>
      <!-- end of column one -->
    <!-- end of column three -->
    <div class="column4">
      <div class="title">펜션</div>
      <div class="offer_box_wide"> <a href="mainlodgetail.trip"><img src="/zzTourr/resources/hotelUpload/p1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainlodgedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainlodgedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainlodgedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainlodgedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainlodgedetail.trip">...more</a></div>
        </div>
      </div>
    </div>
    
      <div class="column4">
      <div class="title">가이드</div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainguidedetail.do">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0" /></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> &quot;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&quot; </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
 </div>
   </div>
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
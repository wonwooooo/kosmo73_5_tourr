<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
     <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>로그인하려면</span> </div>
            <div class="box_title"><span>밑의 버튼을 클릭해주세요</span> </div>

            <div style="float:right; padding:10px 25px 0 0;">
               <a href="mainlogin.do"><input type="button" value="로그인" /></a>
            </div>
       <div class="form_row">
              <a href="mainpassmiss.do" style="text-decoration: none; color:#615357;"><label style="float:center;">아이디/비밀번호 찾기</label></a>
            
            </div>
            
             <div class="form_row">
              <label style="float:center;">회원가입 </label>
           </div>
          </div>
	 <div class="bottom_left_box"> </div>
	</div>

	 <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>${sessionScope.login }님, 환영합니다!</span> </div>
          <div class="form">
    
      <div class="form_row">
          <label style="float:center;">오늘도 기분좋은 하루 되세요.</label>
     </div>
     
     <div style="float:right; padding:10px 25px 0 0;">
        <input type="button" value="로그아웃" />
      </div>
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
 </div> 

       <div class="column4">
      <div class="title" style="float:left;">
        <div style="float:left;">자유게시판</div>
        
      </div>
 </div>
      <input type="button" value="목록보기"/>&nbsp;
       <input type="button" value="답변하기"/>&nbsp;
        <input type="button" value="수정하기"/>&nbsp;
         <input type="button" value="삭제하기"/>
      </div>
      <div class="column3">
      <div class="main_text_box">
    <h1>원우네 펜션</h1>
    <div class="offer_info"><span>노신영</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2020-12-21</div>
	<pre>
    와 인생 뭐있냐 와 인생 뭐있냐 와 인생 뭐있냐 와 인생 뭐있냐 와 인생 뭐있냐 와 인생 뭐있냐 
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐
    
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐
    
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐
    
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐 와 인생 뭐있냐
    와 인생 뭐있냐
    </pre>
      </div>
        
          <div class="offer_info"> </div>
    <div class="offer_info">
   </div>

        <div>
        <img src="/zzTourr/resources/mainImgs/big_pic.jpg"/>
       <p>&nbsp;</p>
    </div>
         
</div>
     
  <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>

</body>

</html>
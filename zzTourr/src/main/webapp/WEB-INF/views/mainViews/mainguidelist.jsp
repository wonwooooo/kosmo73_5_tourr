<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>re:ko</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script>
$(function() {
  $( "#datepicker1" ).datepicker({
    dateFormat: 'yy.mm.dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    showMonthAfterYear: true,
    changeMonth: true,
    changeYear: true,
    yearSuffix: '년'
  });
});
</script>

</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo.gif"  width="147" height="78" alt="" border="0" /></a> </div>
    <div class="banner_adds"></div>
    <div class="menu">
      <ul>
       
        <li><a href="mainguidelist.trip">가이드</a></li>
        <li><a>숙소
          <!--[if IE 7]><!-->
          </a>
          <!--<![endif]-->
          <!--[if lte IE 6]><table><tr><td><![endif]-->
          <ul>
            <li><a href="mainlodgelist.trip">호텔</a></li>
            <li><a href="mainlodgelist.trip">모텔</a></li>
            <li><a href="mainlodgelist.trip">게스트하우스</a></li>
            <li><a href="mainlodgelist.trip">펜션</a></li>
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
            <li><a href="mainfreeboardlist.trip">동행자 찾아요</a></li>
          </ul>
          <!--[if lte IE 6]></td></tr></table></a><![endif]-->
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
     <li><a href="http://all-free-download.com/free-website-templates/">마이페이지</a></li>
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

	 <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>노신영노신님, 환영합니다!</span> </div>
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
        <div style="float:left;">가이드</div>      
      </div>
      <br/>
       <br/>
       <br/>
  	   <div>
 		<input type="text" id="datepicker1" value="클릭하여 날짜선택"/>
 		  <select>
            <option>프로그램명</option>
            <option>가이드명</option>
              <option>지역</option>
          </select>
          <input type="text"/>
           <input type="button" value="검색"/>
     </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p1.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 150 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="offer_box_wide"> <a href="mainguidedetail.trip"><img src="images/p2.jpg" width="130" height="98" class="img_left" alt="" border="0"/></a>
        <div class="offer_info"> <span>For Sale 220 000 $</span>
          <p class="offer"> "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." </p>
          <div class="more"><a href="mainguidedetail.trip">...more</a></div>
        </div>
      </div>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="http://all-free-download.com/free-website-templates/">2</a><a href="http://all-free-download.com/free-website-templates/">3</a><a href="http://all-free-download.com/free-website-templates/">4</a><a href="http://all-free-download.com/free-website-templates/">5</a><a href="http://all-free-download.com/free-website-templates/">6</a><a href="http://all-free-download.com/free-website-templates/">7</a><a href="http://all-free-download.com/free-website-templates/">10</a><a href="http://all-free-download.com/free-website-templates/">11</a><a href="http://all-free-download.com/free-website-templates/">>></a> </div>
    </div>
    <!-- end of column four -->

  </div>
  <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>

</body>
</html>
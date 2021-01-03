<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>상품 후기내역</title>
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
      <li><a href="mainguidelist.trip">가이드</a></li>
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
        <li><a href>마이페이지
          </a>
          
          <ul>
          <li><a href="/customerViews/customerReservList.trip?userId=${sessionScope.loginId}">구매내역</a></li>
     
<%--             <li><a href="../customerViews/customerProdRevboard.trip?userId=${sessionScope.loginId}">My 상품후기</a></li> --%>
            
            <li><a href="/customerViews/customerInfo.trip?userId="${sessionScope.login}">개인정보</a></li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
  <div id="main_content">

    <div class="column4">
      <div class="title" style="float:left;">
        <div style="float:left;">상품 후기내역</div>
<!--         <div style="float:right; font-size:10px;color:#d8325d; padding-top:2px;">display: <a href="list2.html"><img src="images/list_style3_a.gif" border="0" /></a> <a href="list1.html"><img src="images/list_style1.gif" border="0" /></a> <a href="list.html"><img src="images/list_style2.gif" border="0" /></a> </div> -->
      </div>

      <table style="clear:both; width:695px; margin-top:10px;" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <th>상품명</th>
          <th>이용 후기</th>
          <th>등록일</th>          
          <th>평점</th>
          
        </tr>
        <c:forEach items="${prodrevList }" var="productrevbo"></c:forEach>
        <tr class="color1" onmouseout="style.backgroundColor='#F3F5F6'" onclick="document.location.href='#'" onmouseover="this.style.cursor='pointer'; style.backgroundColor='#ffffff'" title="Vezi detaliile anuntului" >

          <td>${reservation.category}</td>
          <td>${productrevbo.revcontent }</td>
          <td>${productrevbo.revdate } </td>
          <td>${productrevbo.grade} </td>
        </tr>

        </tr>
        
      </table>
      <div class="pagination"> <span class="disabled"><<</span><span class="current">1</span><a href="http://all-free-download.com/free-website-templates/">2</a><a href="http://all-free-download.com/free-website-templates/">3</a><a href="http://all-free-download.com/free-website-templates/">4</a><a href="http://all-free-download.com/free-website-templates/">5</a><a href="http://all-free-download.com/free-website-templates/">6</a><a href="http://all-free-download.com/free-website-templates/">7</a><a href="http://all-free-download.com/free-website-templates/">10</a><a href="http://all-free-download.com/free-website-templates/">11</a><a href="http://all-free-download.com/free-website-templates/">>></a> </div>
    </div>
    
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

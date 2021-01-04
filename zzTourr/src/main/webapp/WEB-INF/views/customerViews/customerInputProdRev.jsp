 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>상품후기 작성</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerStyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/customerAdmin.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$('#btn').click(function(){
		if( $.trim($("#revContent").val()) == '' ){
            alert("후기를 입력해주세요.");
            return false;
        }
		$('#insertRev').submit();
	})
})
</script>
</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="../mainViews/mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo1.gif" width="147" height="78" alt="" border="0" /></a> </div>
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
 
     <li><a>마이페이지</a>
     <ul>
            <li><a href="../customerViews/customerReservList.trip?userId=${sessionScope.loginId}&page=1">구매내역</a></li>
            
            <li><a href="../customerViews/customerInfo.trip?userId=${sessionScope.loginId}">개인정보</a></li>
          </ul>
     </li>
   
      </ul>
    </div>
  </div>
  <div id="main_content">
     <div class="column1">
  

	 <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>${sessionScope.login }님, 환영합니다!</span> </div>
          <div class="form">
    
      <div class="form_row">
          <label style="float:center;">오늘도 기분좋은 하루 되세요.</label>
     </div>
     <form id="logoutform" name="logoutform" action="../mainViews/mainlogOut.trip" method="post">
     <div style="float:right; padding:10px 25px 0 0;">
        <input type="submit" value="로그아웃" />
      </div>
      </form>
       </div>
       </div>
        <div class="bottom_left_box"> </div>
      </div>

       </div> 
  
 </div> 
</div>
   <div class="column4">
     <div class="title">후기작성</div>
      <div class="contact_tab">
        <div class="form_contact">
        
       <form action="customerInsertProdRev.trip" method="get" id="insertRev">
        <div class="adminform_row_contact">
       <div>
          <input type="hidden" name="resId" value="${resId }" />
  		 <input type="hidden" name="productId" value="${productId }" />
  		  <input type="hidden" name="userId" value="${sessionScope.loginId }" />
  		    <input type="hidden" name="userName" value="${sessionScope.login }" />
         <div class="adminform_row_contact">
          <label>평점: <span> 1~5 까지 원하시는 평점을 남겨보세요</span></label>
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
          <textarea name="revContent" id="revContent" rows="" cols="" ></textarea>
        </div>
        </div>

        <div style="float:right; padding:10px 25px 0 0;">

          <input style="float:right;" type="button" value="등 록" id="btn"/>       
     	</div>
        </div>
        </form>
      </div>
    </div>
    </div>

    <div>
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
    <!-- end of column four -->
    </div>
  <!-- end of main_content -->
<center>
   <div id="footer" >
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>
<!-- end of main_container -->
</center>
</body>
</html>

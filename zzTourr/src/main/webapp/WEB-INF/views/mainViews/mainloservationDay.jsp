<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BuildUp Real Estate - Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainadmin.css" />
<script type="text/javascript" src="/zzTourr/resources/js/jquery-3.5.1.min.js"></script>
<script>
$(function(){

	
	  $('.checkInDate2').click(function(){
		    $.ajax({
		    	type : 'post', //전송방식
		    	async : true,	//비동기통신
		    	url : 'idCheck.trip', // ****요청(request)
		    	contentType : 'application/x-www-form-urlencoded;charset=utf-8', //한글처리
		    	data : {'checkInDate2' : $('.checkInDate2').val(),
		    			'productId' : 	$('#productId').val()
		    	}, //보내는 데이타
		    	success : function(result){
		    		
		    		resultFunc(result);
		    	},
		    	error : function(err){
		    	console.log(err);
		    	}
		    });
       
		    function resultFunc(result){
		    	alert(result);
		    	$(this).next().text(result);
		    }
	})
})


</script>
</head>
<body>
<div id="main_container">
  <div id="header">
    <div id="logo"> <a href="mainindex.trip"><img src="/zzTourr/resources/mainImgs/logo.gif" width="147" height="78" alt="" border="0" /></a> </div>
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
     <li><a>마이페이지</a>
     <ul>
            <li><a href="customerReserv.trip">구매내역</a></li>
            <li><a href="customerCart.trip">장바구니</a></li>
            <li><a href="customerProdRevboard.trip">My 상품후기</a></li>
            <li><a href="customerQna.trip">1:1 문의</a></li>
            <li><a href="customerModify.trip">개인정보</a></li>
          </ul>
     </li>
      </ul>
    </div>
  </div>
  <div id="main_content">
        <div class="admin_login">
       <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span>객실예약</span> </div>
      <form action="mainloreser" method="get"/>
          <div class="form">
          	<input type="button" name="productId" id="productId" value="${productId }" />
             <c:forEach items="${dateList }" var="reservation">
            <div class="form_row">
           
              <label class="left">투숙자명: </label>
      
             <input type="button" name="checkInDate2" class="checkInDate2" id="checkInDate2" value="${reservation.checkInDate2 }" />
        <span id="idCheckResult" class="idCheckResult" style="width:150px;color:red"></span>
              <input type="text" class="form_input" />
            </div>
          </c:forEach>
            
          </div>
          </form>
        </div>
        <div class="bottom_left_box"> </div>
      </div>
    </div>
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
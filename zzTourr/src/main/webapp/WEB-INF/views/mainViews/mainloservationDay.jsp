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

	
	  $('.checkInDate').click(function(){
		  alert($(this).val())
		    $.ajax({
		    	type : 'post', //전송방식
		    	async : true,	//비동기통신
		    	url : 'idCheck.trip', // ****요청(request)
		    	contentType : 'application/x-www-form-urlencoded;charset=utf-8', //한글처리
		    	data : {'checkInDate2' : $(this).val(),
		    			'productId' : 	$('.productId').val()
		    	}, //보내는 데이타
		    	success : function(result){
		    		if(result == "1" )
		    			{
		    			$('.checkInDate').prop("checked",false);		    		
		    			alert('해당 날짜는 예약이 마감되었습니다.');
		    			location.href = "mainpasssres.trip"
		    		
		    			}else{
		    				alert('예약가능한 날짜입니다. 확인해주셔서 감사합니다');
		    			}
		    		
		    	},
		    	error : function(err){
		    	console.log(err);
		    	}
		    });
		    
	})
	
	
	
	 $('#finalsubmit').click(function(){
		     var flag=false;
			 $('.checkInDate').each(function(){
			 	 if(!$(this).is(':checked')){
			 		 	flag=true;
	    				alert("해당하는 모든 날짜에 예약이 가능한지 확인해 주세요")
	    				return false;
				 }
			 	
			 })
			     if(!$('#lodger').val().match(/[가-힝A-Za-z]/))
    			{
     				alert("투숙자명은 한글 및 영어 대소문자로 입력해 주세요")
     				flag=true;
     			}
     			if($('#lodger').val().length == 0 || $('#lodger').val().length > 8)
     			{
     				alert("투숙자명은 필수입력이며, 8자 이내입니다.")
     				flag=true;
     			}
     			if($('#lodgerTel').val().length == 0 || $('#lodgerTel').val().length > 15)
     			{
     				alert("투숙자 연락처는 필수입력이며, 15자 이내입니다")
     				flag=true;
     			}
     		
     				 if(isNaN($('#lodgerTel').val()))
     			{
      				alert("연락처는 숫자로만 입력 부탁드립니다")
      				flag=true;
      			}
     			 if(!flag){			
     				 
     			 	$('#finalfrm').submit();
     			 	alert("예약이 완료되었습니다. 마이페이지에서 예약 후 2일내로 결제 부탁드립니다.")
     			 }
	 });
    		

})


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
        <div class="admin_login">
       <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span> * 객실예약 * </span> </div>
      	<div class="box_title"><span>#2. 예약가능여부 확인</span> </div>
   
          <div class="form">
          <div class="form_row">
              <p>
               &nbsp; &nbsp;고객님, 번거로우시겠지만
               </p>
               <p>
               &nbsp; &nbsp;정확한 예약을 위하여
               </p>
                 <p>
                &nbsp; &nbsp;체크인/체크아웃 사이 모든 날짜의
                </p>
                 <p>
                &nbsp; &nbsp; '날짜확인'아래의 체크박스를 클릭하여 
                </p>
                 <p>
                &nbsp; &nbsp;  예약 가능 여부를 확인해 주시면 감사하겠습니다	
                </p>
                 <p>
                &nbsp; &nbsp; 모든 체크박스가 체크된 상태에서
                </p>
                 <p>
                &nbsp; &nbsp;  예약이 가능하오니 양해 부탁드립니다.
                </p>
              
             <c:forEach items="${dateList }" var="reservation">
            <div class="form_row">
              <div style="float:left">
               &nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp; &nbsp;날짜  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;날짜확인
               </div>
            
      	<input type="hidden" name="productId" id="productId" class="productId" value="${reservation.productId }" />
      	 <input type="label"  id="checkInDate2" value="${reservation.checkInDate2 }" readonly />
             <input type="checkbox" name="checkInDate2" class="checkInDate"  value="${reservation.checkInDate2 }" />
          
            </div>
               
          </c:forEach>

          </div>
          <div class="box_title"><span> &nbsp; &nbsp; </span> </div>
           	<div class="box_title"><span>#3. 최종 예약정보 확인</span> </div>
           	   <div ><span> &nbsp; &nbsp; </span> </div>
          <form id="finalfrm" action="finalinsert.trip" method="get">
<input type="hidden" name="userId" value="${sessionScope.loginId }"/>
<input type="hidden" name="productId" value="${productId }"/>
<div style="float:left">
&nbsp; &nbsp;1.체크인 날짜
 </div>
 <a></a>
 <a>
<input type="text" name="checkInDate2" value="${checkInDate2 }"  style="width:100px" readonly/>
</a>
<div style="float:left">
&nbsp; &nbsp;2. 체크아웃 날짜
 </div>
<input type="text" name="checkOut2" value="${checkOut2 }" style="width:100px" readonly/>
<input type="hidden" name="reservName" value="${sessionScope.login }" />
<input type="hidden" name="reservTel" value="${sessionScope.loginTel }" />
<div style="float:left">
&nbsp; &nbsp;3. 투숙자 성함
 </div>
<input type="text" name="lodger" id="lodger" style="width:100px"/> 
<div style="float:left">
&nbsp; &nbsp;4. 투숙자 연락처
 </div>
<input type="text" name="lodgerTel" id="lodgerTel" style="width:120px"/> 
<div style="float:left">
&nbsp; &nbsp;5. 투숙인원
 </div>
<input type="text" name="peopleNum" value="${maxPeople }" style="width:100px" readonly/>
<div style="float:left">
&nbsp; &nbsp;6. 최종 예약금액
 </div>
<input type="text" name="reservPrice" value="${price }"  readonly/>
<div>
&nbsp; &nbsp;
 </div>
<input type="button" value="예약하기" id="finalsubmit"/>	
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
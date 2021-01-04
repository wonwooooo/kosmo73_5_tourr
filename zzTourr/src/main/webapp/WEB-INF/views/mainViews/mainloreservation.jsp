<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BuildUp Real Estate - Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainstyle.css" />
<link rel="stylesheet" type="text/css" href="/zzTourr/resources/css/mainadmin.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
  $.datepicker.setDefaults({
    dateFormat: 'yy/mm/dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
  });

  $(function() {
    $("#datepicker1, #datepicker2").datepicker({minDate: 1, maxDate: '+2m'});
  
    $('#ressubmit').click(
			
    		function(){
    			 
    			   var dt1 = new Date($('#datepicker1').val()); 
 					 var dt2 = new Date($('#datepicker2').val());
 			
    			if($('#maxPeople').val().length == 0 )
    			{
    				alert("투숙인원을 입력해 주세요")
    				return false;
    			}
    			if(!$('#maxPeople').val().match(/[0-9]/))
				{
				alert("인원은 숫자로만 기입바랍니다")
				}
    			if($('#maxPeople').val() > $('#pp').val())
    			{
    				alert("최대 투숙 인원을 확인해 주세요")
    				return false;
    			}
    			if($('#datepicker1').val() >= $('#datepicker2').val())
    			{
    				alert("체크아웃 날짜가 체크인 날짜보다 같거나 이전입니다. 다시 확인해 주세요")
    				return false;
    			}
    			if((dt2- dt1) / (60*60*24*1000) > 7)
    			{
    				alert("고객님, 죄송합니다만 7일이 넘어가는 예약은 고객센터(010-4708-7412)로 전화하여 예약바랍니다")
    				return false;
    			}
    			if(!$('#datepicker1').val().match(/[0-9][/]/) || !$('#datepicker2').val().match(/[0-9][/]/))
    			{
    				alert("체크인/체크아웃 날짜를 정확히 선택해 주세요")
    				return false;
    			}
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
      </ul>
    </div>
  </div>
  <div id="main_content">
        <div class="admin_login">
       <div class="left_box">
        <div class="top_left_box"> </div>
        <div class="center_left_box">
          <div class="box_title"><span> * 객실예약 * </span> </div>
      	<div class="box_title"><span>#1. 투숙인원 및</span> </div>
      		<div class="box_title"><span>체크인/체크아웃 날짜 정하기</span> </div>
        <form action="mainloservationDay.trip?offPrice=${offPrice }" method="get">        
          <div class="form">
       
            <div class="form_row">
      		  <p>&nbsp; &nbsp; 최대 투숙 인원은</p>
      		
      		 <input type="button" class="form_input"  id="pp" value="${maxPeople }" style="width:50px;float:center"/>
      		
      		 <p>명입니다</p>
			 <br/>
			  
			 <div style="float:left">
               &nbsp; &nbsp;1. 투숙인원을 기입해 주세요
               </div>
                <div style="float:left">
               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;숫자로만 기입바랍니다
               </div>
               <div class="form_row">
              <label class="left">투숙인원: </label>
              <input type="text" class="form_input"name="maxPeople" id="maxPeople"  />
            </div>
              <input type="hidden" class="form_input" name="checkInDate" value="${peakSumStart }" />
               <input type="hidden" class="form_input" name="checkOut" value="${peakSumExit }" />
                 <input type="hidden" class="form_input" name="category" value="${category }" />
            <input type="hidden" class="form_input" name="productId" value="${productId }" />
             <input type="hidden" class="form_input" name="roomId" value="${roomId }" />
           
              	 <br/><p>&nbsp; &nbsp;</p>	 
              	 <p>&nbsp; &nbsp;</p>	 
             <p>
               &nbsp; &nbsp;2. 체크인/체크아웃 날짜를 선택해 보세요
               </p>
                 <p>
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;최대 7일(ex.체크인:21/01/01 시
               </p>
                  </div>
                 <p>
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 최대 체크아웃 날짜 21/01/08)
               </p>
               <p>
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;까지 입력 가능하며
               </p>
                 <p>
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장기 투숙은 고객센터(010-4708-7412)로 
               </p>
                    <div style="float:left">
               &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전화 부탁드립니다.
               </div>
            </div>
            <div class="form_row">
            <label class="left">체크인 : </label>
              <input type="text" class="form_input" id="datepicker1" value="클릭하여 날짜선택" name="checkInDate2"  readonly/>
<!-- checkInDate2, checkOut2 -->
             </div>
            <div class="form_row">
            <label class="left">체크아웃	: </label>
              <input type="text" class="form_input" id="datepicker2" value="클릭하여 날짜선택" name="checkOut2"  readonly/> 
               <input type="hidden" class="form_input" name="reservPrice" value="${offPrice }" />
            </div>
            
               <p>&nbsp; &nbsp;</p>	 
             <div style="float:left">
               &nbsp; &nbsp;3. 아래의 '날짜확인' 버튼을 눌러
               </div>
               <div style="float:left">
               &nbsp; &nbsp;예약가능여부를 확인하세요
               </div>
                 <p>&nbsp; &nbsp;</p>	 <br/> <br/>
                 <div>
               &nbsp; <input type="submit" value="날짜확인" id="ressubmit"/>
               </div>
      	 </form>
            </div>
        <div class="bottom_left_box"> </div>
          </div>
     
     
     
        </div>
    

  <!-- end of main_content -->
  </div>
  </div>
  <center>
 <div id="footer">
    
    <ul>
      <li> (주)리코 &nbsp; &nbsp;   | &nbsp; &nbsp;   대표 : 정원우, 서주영  &nbsp; &nbsp; |&nbsp; &nbsp;    주소 : (03161) 경기도 화성시 능동 1137 </li>
      <li><a>이메일 : nattty@gmail.com &nbsp; &nbsp;   | &nbsp; &nbsp;  고객센터 : 010-4708-7412</a></li>
    </ul>
 
  </div>
 </center>
 
 </body>
</html>
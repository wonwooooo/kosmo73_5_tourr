<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewLodge.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
</head>
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
$(document).ready(function){
	$(fileInput).on('change',function(){
		if(window.FileReader){
			var filename= $(this)[0].files[0].name;
		} else {
			var filename = $(this).val().split('/').pop().split('\\').pop();
		}
		
		$("#userfile").val(filename);
	})
	
	$("#datepicker1, #datepicker2").datepicker();
}	

function sample6_execDaumPostcode(){
    new daum.Postcode({
       oncomplete : function(data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var addr = ''; // 주소 변수
          var extraAddr = ''; // 참고항목 변수
             //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
             addr = data.roadAddress;
          }else { // 사용자가 지번 주소를 선택했을 경우(J)
             addr = data.jibunAddress;
          }
          // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
          if (data.userSelectedType === 'R') {
             // 법정동명이 있을 경우 추가한다. (법정리는 제외)
             // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
             if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
             }
                // 건물명이 있고, 공동주택일 경우 추가한다.
             if (data.buildingName !== '' && data.apartment === 'Y') {
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
             }
             // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
             if (extraAddr !== '') { extraAddr = ' (' + extraAddr + ')';
             }
          }
          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('sample6_postcode').value = data.zonecode;
          document.getElementById("sample6_address").value = addr;
          // 커서를 상세주소 필드로 이동한다.
          document.getElementById("sample6_detailAddress") .focus();
       }
    }).open();
 }
</script>

<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="ownerlogin.trip">Re:ko</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          숙소 관리 <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
            <li><a href="newLodge.trip">숙소 등록</a></li>
            <li><a href="ModifyLodge.trip">숙소 수정</a></li>
            <li><a href="priceEdit.trip">요금 설정</a></li>           
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">예약 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="ResMgr.trip">예약 관리</a></li>
            <li><a href="salHis.trip">매출 내역</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" >리뷰 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Review.trip">리뷰 및 피드백</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >계정 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Mypage.trip">마이페이지</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<article class="container">
            <div class="page-header">
                <div class="col-md-9 col-md-offset-3">
                <h3>숙소등록 페이지</h3>
                </div>
                <div class="col-md-9 col-md-offset-3">
                <h5>신규 숙소 등록 페이지입니다.</h5>
                </div>
            </div>
            <div class="col-sm-6 col-md-offset-3">
                <form role="form">
                    <div class="form-group">
                        <label for="inputName">숙소 이름</label>
                        <input type="text" class="form-control" id="inputName" placeholder="숙소이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputLodgeType">숙소 타입을 정해주세요</label>
                        <select class="form-control">
                        	<option value="hotel">호텔</option>
                        	<option value="guest-house">게스트하우스</option>
                        	<option value="motel">모텔</option>
                        	<option value="pension">펜션</option>
                        </select>
                    </div>
                    <div class="form-group">
                    <tr>
                        <th scope="row">
                            <label>주소</label>
                        </th>
                        <td>
                           <div class="SectionCreateCafeKeyword">                     
                              <div class="cafe_keyword_input_area">
                              <div class="FormInputText">
                                       <input type="text" id="sample6_postcode" placeholder="우편번호" size="5"> 
                              <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="selectPost">
                              <br>
                              <input type="text" id="sample6_address" placeholder="주소" name="addr" required class="id" oninput="checkId()" value="${userVO.addr}" readonly>
                                 </div>                                                                                                   
                              </div>
                           </div>               
                      </td>
                   </tr>
                   </div>
                   <div class="form-group">
              		<label>사용가능한 편의시설을 선택해주세요</label>
              		<br/>
                   	<input type="radio" value="kitchen">주방
                   	<input type="radio" value="barbeque">바베큐장
                   	<input type="radio" value="pool">수영장
                   	<input type="radio" value="jacuzzi">자쿠지
                   	<input type="radio" value="airconditioner">에어컨
                   	<input type="radio" value="heater">히터
                   	<input type="radio" value="on-dol">온돌보일러  	                   
                   
                   </div>
                  <div class="form-group">
                   		<label> 간단하게 숙소를 소개해주세요 </label>
                   		<br/>
                   		<input class="col-md-9" type="text" ><br/>                  	
                   </div>
                   <div class="form-group">
                  	<label> 하절기 성수기 기간을 정해주세요. (최대2주) </label><br/>
                   	<input type="text" id="datepicker1"> ~ 
                   	<input type="text" id="datepicker2"> 
                   	
                   </div>
                   <div class="form-group">
                  	<label> 동절기 성수기 기간을 정해주세요. (최대2주) </label><br/>
                  	<input type="text" id="datepicker1"> ~ 
                   	<input type="text" id="datepicker2">
                   </div>
					<div class ="form-group">
						<label>객실을 등록해주세요</label>
						<input type="button" value="새 객실" onclick="newRoom.trip">
						<div class ="form-group">
							<label>객실명을 입력해주세요</label>
							<br/>
							<input type="text" width="10"><br/>
							최대인원수 : 
							<select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							</select><br/>
							객실수 : 
							<select>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							</select><br/>
							비수기요금 : <input type="number"><br/>
							성수기요금 : <input type="number"><br/>
							<label>파일첨부</label>
							<input id="fileInput" type="file" data-class-button="btn btn-default" data-class-input="form-control"
							data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
							<div class="bootstrap-filestyle input-group">
								<input type="text" id="userfile" class="form-control" name="userfile" disabled="">
								<span class="group-span-filestyle input-group-btn" tabindex="0">
									<label for="fileInput" class="btn btn-default">
										<span class="glyphicon fa fa-upload"></span>
									</label>
								</span>
							</div>
							
							
						</div>			
						
					</div>
                    <div class="form-group text-right">
                        <button type="submit" id="join-submit" class="btn btn-default">
                            숙소 등록하기 
                        </button>
                     
                    </div>
                </form>
            </div>
            </article>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css" />
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<jsp:include page="hotelMenu.jsp"/>
<div class="page-header">
                <div class="col-md-9 col-md-offset-3">
                <h3>숙소 수정 페이지</h3>
                </div>
                <div class="col-md-9 col-md-offset-3">
                <h5>숙소 수정 페이지입니다.</h5>
                </div>
            </div>
<div class="col-sm-offset-3 col-sm-6 " >
<h2>숙소 목록</h2>
<table class="table" border="1" >
	<tr border="1" >
	<th>숙소번호</th>
	<th>숙소이름</th>
	<th>숙소위치</th>
	<th>숙소정보</th>
	</tr>
	<tr>
	<td>123</td>
	<td>123</td>
	<td>123</td>
	<td>123</td>
	</tr>
</table>
</div>
<article class="container">
            <div class="col-sm-6 col-md-offset-3">
                <form role="form">
                    <div class="form-group">
                        <label for="inputName">숙소 이름</label>
                        <input type="text" class="form-control" id="inputName" placeholder="숙소이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputLodgeType">숙소 타입</label>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelNewRoom.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#con').click(function(){

		var maxSize = 5 * 1024 * 1024;
		var fileSize;
    	if( $.trim($("#roomName").val()) == '' ){
            alert("객실이름을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#roomName").val()) > 10 ){
            alert("객실이름은 10자 이내로 설정해주세요.");
           
            return false;
        }
    	if( $.trim($("#roomCont").val()) == '' ){
            alert("객실설명을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#offPrice").val()) == '' ){
            alert("비수기금액을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#peakPrice").val()) == '' ){
            alert("성수기금액을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#file").val()) == '' ){
            alert("우리 객실을 소개할 예쁜 그림파일을 입력해주세요.");
          
            return false;
        }
    	
     	if(isNaN($.trim($('#offPrice').val()))) {
     		alert("비수기금액은 숫자로만 입력 부탁드립니다");
     	
     		return false;
     	}
     	if(isNaN($.trim($('#peakPrice').val()))) {
     		alert("성수기금액은 숫자로만 입력 부탁드립니다");
     	
     		return false;
     	}
      	if(!$('#file').val().match(/([^\s]+(?=\.(jpg|gif|png))\.\2)/)){
     		alert("그림 형식은 jpg/gif/png만 가능합니다");
        		return false;
    	}
      	fileSize = document.getElementById("file").files[0].size;
      	
      	if(fileSize > maxSize) {
        	alert("파일 사이즈는 5MB까지 가능합니다.");
            return;
        }

       alert("객실이 등록되었습니다.")
     
        $('#newRoom').submit();
	});
})
	</script>
</head>
<body>
<jsp:include page="hotelMenu.jsp"/>
<div class ="form-group">
					
			<article class="container">		
					 <div class="col-md-9 col-md-offset-3">
						<h3>객실을 등록해주세요</h3>
						</div>
						 <div class="col-sm-6 col-md-offset-3">
						<form action ="roomIn.trip" method="post" enctype="multipart/form-data" id="newRoom">
<!-- 						<input class="btn btn-default" type="button" value="새 객실"> -->
						
							 <label for="inputName">객실이름 : </label>
							<input name="roomName" class="form-control" id="roomName" type="text" width="10"><br/>
							 <label for="inputName">객실설명 : </label>
							 <div>
							<textarea name="roomCont" id="roomCont" cols="73" rows="7"></textarea><br/>
							</div>
							<label for="inputName">최대인원수 : </label>
						
							<select class="maxPeople" name="maxPeople">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							</select><br/>
							
							<label for="inputName">객실수 :  </label>
							<select class="lodCount" name="lodCount">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							
							</select><br/>
							<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>"> 
							<input type="hidden" class="roomprice1" name="lodgeId" value="${lodgeId }">
							<label for="inputName">비수기요금 : </label><input type="text" class="roomprice1" name="offPrice" id="offPrice"><br/>
							<label for="inputName">성수기요금 : </label><input type="text" class="roomprice2" name="peakPrice" id="peakPrice"><br/>
							<label>파일첨부</label>
							<input type="file" maxlength="60" size="40" name='file' id="file">
							<br/>
										<span class="glyphicon fa fa-upload"><input class="btn btn-default" type="button" id = "con" value="객실등록"></span>
									</label>
								</span>
							</div>
							</form>
							
						</div>			
						
					</div>
					</article>

</body>
</html>
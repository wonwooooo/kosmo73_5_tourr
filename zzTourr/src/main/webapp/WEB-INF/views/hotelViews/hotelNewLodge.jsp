<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewLodge.jsp</title>
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css?ver=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
		
		var maxSize = 5 * 1024 * 1024;
		var fileSize;
    	if( $.trim($("#lodName").val()) == '' ){
            alert("숙소이름을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#lodName").val()) > 10 ){
            alert("숙소이름은 10자 이내로 설정해주세요.");
           
            return false;
        }
    	if( $.trim($("#lodCont").val()) == '' ){
            alert("숙소설명을 입력해주세요.");
          
            return false;
        }
    	if( $.trim($("#lodAddr").val()) == '' ){
            alert("주소를 입력해주세요.");
         
            return false;
        }
    	if( $.trim($("#file").val()) == '' ){
            alert("우리 숙소를 소개할 예쁜 그림파일을 입력해주세요.");
          
            return false;
        }
    	if($.trim($('#lodTel').val())=='' || $.trim($('#lodTel').val()).length > 15){
    		alert("연락처는 필수입력이며, 15자 이내로 입력 부탁드립니다.");
    	
    		return false;
    	}
    	
     	if(isNaN($.trim($('#lodTel').val()))) {
     		alert("연락처는 숫자로만 입력 부탁드립니다");
     	
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

       alert("숙소가 등록되었습니다.")
     
        $('#newLodge').submit();
	});
	
})
</script>
</head>


<body>
<jsp:include page="hotelMenu.jsp"/>
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
                <form name="newLodge" id="newLodge" method='post' action="LodgeInsert.trip" enctype="multipart/form-data">
                    <div >
                        <label for="inputName">숙소 이름</label>
                        <input type="text" class="form-control" id="lodName" name="lodName" placeholder="숙소이름을 입력해 주세요">
                    </div>
                    <div class="form-group">
                        <label for="InputLodgeType">숙소 타입을 정해주세요</label>
                        <select class="form-control" name="lodCate">
                        	<option value="호텔">호텔</option>
                        	<option value="게스트하우스">게스트하우스</option>
                        	<option value="모텔">모텔</option>
                        	<option value="펜션">펜션</option>
                        </select>
                    </div>
                    <div class="form-group">
                  
                        <th scope="row">
                            <label>주소</label>
                        </th>
                        <td>
                           <div class="SectionCreateCafeKeyword">                     
                             
                              <input type="text" id="lodAddr" placeholder="주소" name="lodAddr" size=	"70px">
                                 </div>                                                                                                   
                                       
                      </td>
                  </div>
                   <div class="form-group">
              		<label>사용가능한 편의시설을 선택해주세요</label>
              		<br/>
              		<input type="radio" name="lodConven" value="주방" checked="checked">주방
                   	<input type="radio" name="lodConven" value="바베큐장">바베큐장
                   	<input type="radio" name="lodConven" value="수영장">수영장
                   	<input type="radio" name="lodConven" value="자쿠지">자쿠지
                   	<input type="radio" name="lodConven" value="에어컨">에어컨
                   	<input type="radio" name="lodConven" value="히터">히터
                   	<input type="radio" name="lodConven" value="온돌보일러">온돌보일러  	                   
                   
                   </div>
                   
                  <div class="form-group">
                   		<label> 간단하게 숙소를 소개해주세요 </label>
                   		<br/>
                   		<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>"> 
                   		<textarea name="lodCont" id="lodCont" cols="73" rows="10"></textarea><br/>                  	
                   </div>
<!--                    <div class="form-group"> -->
                  	<label> 전화번호를 입력해주세요 </label><br/>
<!--                    	<input type="text" id="datepicker"> -->
<!--                    </div> -->
                   	<input type="text" name="lodTel" id="lodTel">
                   <div class="form-group">
<!--                   	<label> 동절기 성수기 기간을 정해주세요. (최대2주) </label><br/> -->
                   </div>
                   <label>파일첨부</label>
                   
					<input type="file" maxlength="60" size="40" name='file' id="file"></td>
					
						
							</div>
							<br/>
							<div>
                   <button type="button" id="confirm" class="btn btn-default"/>
                            숙소 등록하기 
                        </button>
                        </div>
                                                </form>
                       
					
                    <div class="form-group text-right">
                        
                     
                    </div>
            </div>
            </article>
</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</html>
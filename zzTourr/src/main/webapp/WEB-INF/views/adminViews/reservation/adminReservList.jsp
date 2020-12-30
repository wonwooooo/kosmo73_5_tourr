<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<title>adminReservList.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <!-- <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/> -->  
    
<!-- bootstap bundle js -->
<script src="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>

<!-- slimscroll js -->
<script src="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/slimscroll/jquery.slimscroll.js"></script>

<!-- main js -->
<script src="${pageContext.request.contextPath}/resources/adminTemplate/assets/libs/js/main-js.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script> <!-- 20201229 추가해야함 + static 폴더에도 추가   -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/locationHash.js"></script> <!-- 20201229 추가해야함  -->
<script type="text/javascript">

// 	window.addEventListener('DOMContentLoaded', function(){
		
// 		var start = document.getElementById("start").value;
// 		var end = document.getElementById("end").value;
// 		var alldata = {"start":start, "end":end}
	
// 		$.ajax({
// 			type:"post",
// 			url:"adminAjaxReservList.trip",
// 			data: alldata,
// 			success : function(data){
// 				$('div#reservTab').html(data);
// 			},
// 			error :  function(request,status,error) {
// 			}
// 		});
		
		
// 	})


// 최대한 자바스크립트로 해보자. 
 	
		$(function(e){

			//ajax submit 설정
		var options = {
	        type : "POST",
	        success : renderList,
	        error : error
	    };
	    $('#SearchFrm').ajaxForm(options);
        locationHash.init(search);
        if(window.location.hash == '') { //최초 로드 또는 조회화면에서 목록 버튼을 이용하여 리스트로 이동
            changeLocationHash();
        }else { //조회화면에서 뒤로가기를 이용하여 리스트로 이동 또는 F5외의 수단을 이용하여 페이지를 refresh할때
            search(locationHash.getPageNumByHash());
        }
	});
	
	
//		$.ajax({
//		type:"post",
//		url:"adminAjaxReservList.trip",
//		success : renderList,
//		error :  error
//	});

	// 페이지 넘버 변경시 타는 function
	function changeLocationHash(pageNum) {
        if(typeof pageNum !== 'undefined') {
            $('#SearchFrm input[name=page]').val(pageNum);
        }
        locationHash.setHash($('#SearchFrm input[name=page]').val());
    }
	function search(pageNum) {
	    if (pageNum) {
	        $('input[name=page]').val(pageNum);
	    }
	    $('#SearchFrm').submit();
	}
	
	//성공시 탄다
	function renderList(responseText, statusText, xhr, $form) {
	    $('#section_body').html(responseText);
	}
	
	//에러시 탄다
	function error(responseText, statusText, xhr, $form) { 	
	    alert('오류가 발생하였습니다. 관리자에게 문의하세요');
	}


   
</script>


</head>
<body>
<!-- ★★★★★★ (page) ★★★★★★ -->




    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">


		<!-- 헤더 + nav -->
        <!-- ============================================================== -->
        <!-- header -->
        <!-- ============================================================== -->
		<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_header.jsp"/>
        <!-- ============================================================== -->
        <!-- end header -->
        <!-- ============================================================== -->
	
	
		<!-- 본문 -->
        <!-- ============================================================== -->
        <!-- wrapper -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
            
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">Reservation List</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Reservation List</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Room</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->

                <!-- ============================================================== -->
                <!-- content -->
                <!-- ============================================================== -->
                
                <!-- 페이징 처리를 위해 ajax 값 보낼거 -->
<%--                 <input type="hidden" id="start" value="${start }"/> --%>
<%--                 <input type="hidden" id="end" value="${end }"/> --%>
                
                
	            <form name="SearchFrm" id="SearchFrm" method="get" action="adminAjaxReservList.trip">
					<input type="hidden" id="page" name="page" value="${(empty postParam) ? '1' : postParam.page}" />
					<input type="hidden" id="perPageNum" name="perPageNum" value="${(empty postParam) ? '9' : postParam.perPageNum}" />
				</form>
                
                
                <div class="row" id="section_body">
                	<!-- ajax 로 테이블 받아오는 곳 -->
                </div>

				
				
                
				<!-- ============================================================== -->
                <!-- end content -->
                <!-- ============================================================== -->
        	</div>
        	
			<!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
			<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_footer.jsp"/>
			<!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
            
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper -->
        <!-- ============================================================== -->

	</div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->

</body>
</html>
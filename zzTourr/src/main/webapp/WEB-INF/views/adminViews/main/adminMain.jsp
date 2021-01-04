<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    

<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/charts/morris-bundle/morris.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
</head>
<body>
<div class="dashboard-main-wrapper">
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_header.jsp"/>
	<div class="dashboard-wrapper">
    <div class="container-fluid dashboard-content ">
        <!-- ============================================================== -->
        <!-- pageheader -->
        <!-- ============================================================== -->
        <div class="row"> 
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
				<div class="card">
					<h5 class="card-header">누적 전체 예약매출 조회</h5>
					<div class="card-body">
						<div id="morris_donut" >
						</div>
					</div>
				</div>
		</div>
			</div>
      
         </div>

	</div> <!-- dashboard-wrapper -->
</div> <!--dashboard-main-wrapper -->
<!-- Optional JavaScript -->
<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>
<script src="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/charts/morris-bundle/morris.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/charts/morris-bundle/raphael.min.js"></script>
<!-- <script src="/bootstrap/concept-master/assets/vendor/charts/morris-bundle/Morrisjs.js"></script>
 -->
<script>
(function(window, document, $, undefined) {
	let chart3 = 0;
    $(function() {
    	
        "use strict";
        $.ajax({
        	type : 'post', //전송방식
        	async : true,	//비동기통신
        	url : 'adminChart.trip', // ****요청(request)
        	contentType : 'application/x-www-form-urlencoded;charset=utf-8', //한글처리
        	data : {		
        	}, //보내는 데이타
        	success : function(result){
        	
        		chart3 = result;
           		
           			if ($('#morris_donut').length) {
                        Morris.Donut({
                            element: 'morris_donut',
                            data: [
                            	
                               { value:  chart3, label: '전체 예약매출' },
                  
                                
                            ],
                            labelColor: '#2e2f39',
                               gridTextSize: '14px',
                            colors: [
                                 "#5969ff",
                                 "#ff407b",
                                 "#25d5f2",
                                 "#ffc750"
                            ],
                            formatter: function(x) { return x + "원" },
                              resize: true
                        });
                    }
           		
        	
        	}

       		,
        	error : function(err){
        		//alert(err);
        	//console.log(err);
        	}
       	
       	
        });
  
    });
})(window, document, window.jQuery);
</script>
</body>
</html>
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
					<h5 class="card-header">Donut Chart- '예약완료'상태의 모든 주문의, 가이드 /상품 건수 비교</h5>
					
					<div class="card-body">
						<div id="morris_donut">
						</div>
					</div>
				</div>
			</div>		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
               <div class="card">
                   <h5 class="card-header">Line Chart - 12월 중 일자별 가이드/상품의 총 sdf판매금액 비교 </h5>
                   <div class="card-body">
                       <div id="morris_line" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                       </div>
                   </div>
               </div>
           </div>
        </div>
        
        <c:forEach var="type" items="${chart1}">
			Key is ${type.key}
		   Value is ${type.value} 
		</c:forEach>
		<c:set var="cate_D" value="${chart1['code2']}"/>
        <!-- ============================================================== -->
        <!-- end pageheader -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- content -->
        <!-- ============================================================== -->
         </div>
		<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_footer.jsp"/>
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
    "use strict";
    $(function() {
    	// 도너츠 차트 
        if ($('#morris_donut').length) {
            Morris.Donut({
                element: 'morris_donut',
                data: [
                    { value: 70, label: '가이드' },
                    { value: 44, label: '상품' },
                    //{ value: ${gage}, label: 'thee' },
                    //{ value: 5, label: 'A really really long label' }
                ],
                labelColor: '#2e2f39',
                   gridTextSize: '14px',
                colors: [
                     "#5969ff",
                     "#ff407b",
                     "#25d5f2",
                     "#ffc750"
                ],
                formatter: function(x) { return x + "%" },
                  resize: true
            });
        }
		// 라인 차트 
        if ($('#morris_line').length) {
            // Use Morris.Area instead of Morris.Line
            Morris.Line({
                element: 'morris_line',
                behaveLikeLine: true,
                data: [
                    { y: '1227', a: 700000, b: 300000 },
                    { y: '1230', a: 350000, b: 54000},
                   // { y: '2008', a: 50, b: 40 },
                   // { y: '2009', a: 75, b: 65 },
                    //{ y: '2010', a: 50, b: 40 },
                    //{ y: '2011', a: 75, b: 65 },
                    //{ y: '2012', a: 100, b: 90 }
                ],
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['가이드', '상품'],
                   lineColors: ['#5969ff', '#ff407b'],
                     resize: true,
                        gridTextSize: '14px'
            });
        }
    });
})(window, document, window.jQuery);
</script>
</body>
</html>
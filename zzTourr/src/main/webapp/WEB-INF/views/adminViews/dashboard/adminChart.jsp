<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,shrink-to-fit=no">
<title>관리자 - 결산!!!!</title>
<style>
.menu ul li {
	float: left;
	list-style: none;
	margin-right: 20px;
}

a {
	text-decoration: none;
	color: white;
	font-weight: bold;
}

.content table tr td {
	border: 1px solid black;
}

.tabel_th {
	border: 1px solid black;
	background-color: lightgrey;
}

.product_list tr td img {
	width: 80px;
	height: 80px;
}
/* 페이지 넘기기  */
.paging {
	float: left;
	margin-top: 50px;
	margin-left: 500px;
}

.btn_pageprev {
	float: left;
}

.txt_pagenum {
	float: left;
}

.txt_pagenum a {
	line-height: 35px;
	padding: 0 15px;
	color: black;
}

#totalCalc {
	border-bottom: 2px dotted white;
} /* 밑줄 표시하기 header file에 있는 id값 css적용 */
//
결산 그래프 
* {
	margin: 0;
	padding: 0;
}
/* div{padding:0px; overflow: hidden; height: auto;} */
.hgroup {
	padding: 20px;
	background-color: #e9e9e9;
}

.hgroup h1 {
	font-family: Tahoma;
}

.hgroup p {
	margin: 10px 0;
	font-size: 10px
}

h2 {
	margin: 0;
	padding: 20px;
	border: 1px solid #000;
	background-color: #f9f9f9;
	border-width: 1px 0;
	font-family: Tahoma;
}
</style>
<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/Nwagon.css' type='text/css'>
<script src='${pageContext.request.contextPath}/resources/js/Nwagon.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/Nwagon_no_vml.js'></script>



</head>
<body>
	<!-- 관리자 메인 로고  -->
	<section
		style="width: 1200px; height: 1000px; margin: 0 auto; margin-bottom: 50px;">
		<br>
		<div class="content" style="width: 1200px;">
			<h2>
				'결제완료'누적 합계 :
				<fmt:formatNumber value="" pattern="#,###" />
				원
			</h2>
			<h2>1907월 카테고리 별 도넛 그래프 ('결제완료' 기준)</h2>
			<div id="chart_d"></div>
			<c:forEach var="type" items="${chart2}">
		Key is ${type.key}
	   Value is ${type.value} 
	</c:forEach>
			<c:set var="cate_D" value="${chart2['D']}" />
			<c:set var="cate_T" value="${chart2['T']}" />
			<c:set var="cate_M" value="${chart2['M']}" />
			<c:set var="cate_L" value="${chart2['L']}" />
			<script>
		var options = {
			'dataset': {
				title: '월 카테고리 별 도넛 그래프',
				values:[${cate_D}, ${cate_T}, ${cate_M}, ${cate_L}],
				colorset: ['#2BC8C9', '#FF8C00', '#DC143C','#2EB400'],
				fields: ['디지털/가전', '토이/인형', '문구', '리빙/데코'] 
			},
			'donut_width' : 40, 
			'core_circle_radius':60,
			'chartDiv': 'chart_d',
			'chartType': 'donut',
			'chartSize': {width:600, height:300}
		};
		Nwagon.chart(options);
	</script>
			<h2>ArtBox 월별 총 판매 그래프 ('결제완료' 기준)</h2>
			<div id="chart8"></div>
			<c:forEach var="type" items="${chart1}">
		Key is ${type.key}
	   Value is ${type.value} 
	</c:forEach>
			<c:set var="date10" value="${chart1['1910'] /10000}" />
			<c:set var="date9" value="${chart1['1909'] /10000}" />
			<c:set var="date8" value="${chart1['1908'] /10000}" />
			<c:set var="date7" value="${chart1['1907'] /10000}" />
			<c:set var="date6" value="${chart1['1906'] /10000}" />
			<script>
		var options = {
			'legend': {
	            names: ['6월','7월','8월','9월','10월'],
	            hrefs: []
	        },
	        'dataset': {
	            title: 'ArtBox 월별 총 판매 그래프',
	            values: [${date6},${date7},${date8},${date9},${date10}],
	            colorset: ['#56b4e9'],
	            fields:['월별 총판매']
	        },
	        'chartDiv': 'chart8',
	        'chartType': 'column',
	        'chartSize': { width: 700, height: 300 },
	        'maxValue': 100,
	        'increment': 10
		};
		Nwagon.chart(options);
	</script>
		</div>
	</section>
	<!-----화면 맨 하단 footer----->
</body>
</html>
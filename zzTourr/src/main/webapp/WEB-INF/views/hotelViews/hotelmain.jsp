<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hotelmain.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hotel.css" />
<script type="text/javascript"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});
      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
	 function drawChart() {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', '숙소이름');
        data.addColumn('number', '매출');
        data.addRows([
          ['숙소1', 3],
          ['숙소2', 1],
          ['숙소3', 1],
          ['숙소4', 1],
          ['숙소5', 2]
        ]);
        // Set chart options
        var options = {'title':'숙소별 매출 분포',
                       'width':500,
                       'height':400,
                       'backgroundColor':{'fill':'#FFF5F5'}};
         // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }      
</script>
</head>

<body>
<jsp:include page="hotelMenu.jsp"/>
<div class="col-sm-offset-1 col-sm-10 col-sm-offset-1" >
<h2>오늘의 예약</h2>
<table class="table" border="1" >
	<tr border="1" >
	<th>예약번호</th>
	<th>숙소이름</th>
	<th>방 종류</th>
	<th>예약자명</th>
	<th>예약자번호</th>
	</tr>
	<c:forEach items="" var="vo">
	<tr>
	<td>${vo.resId}</td>
	<td>${vo.lodName}</td>
	<td>${vo.lodCate}</td>
	<td>${vo.reservName}</td>
	<td>${vo.reservTel}</td>
	</tr>
	</c:forEach>
</table>
</div>
<div class="col-sm-offset-1 col-sm-5">
	<h2>예약상황</h2>
	
</div>
<div class="col-sm-offset-1 col-sm-5">
	<h2>매출분석</h2>
	
		<div id="chart_div"></div>
	
</div>
<div class="col-sm-offset-1 col-sm-5">
	<h2>현재 보유 숙소목록</h2>
	<table class="table" border="1">
	<tr border="1" >
	<th>숙소이름</th>
	<th>숙소종류</th>
	<th>숙소위치</th>
	</tr>

<c:forEach items="" var="vo">
	<tr>
	<td>${vo.lodName}</td>
	<td>${vo.lodCate}</td>
	<td>${vo.lodAddr}</td>
	</tr>
</c:forEach>
	</table>
</div>
<div class="col-sm-offset-1 col-sm-5">
	<h2>리뷰</h2>
		<div class="wrap-star" >
		<h3>평균별점</h3> <div class="star-rating">
			<span style="width:30%"></span>
		</div>
	</div>
</div>




</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</html>
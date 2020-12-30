<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<title>adminMemberList.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

/*
 	ajax
 	: 회원리스트 가져오기
 */
window.addEventListener('DOMContentLoaded', function(){

      $.ajax({
         type:"post",
         url:"adminAjaxMemberList.trip",	// 어디로 보낼지 / 컨트롤러url
         //data:data,
         success : function(data){			// 컨트롤러에서 받은 data 를
            $('div#tablebody').html(data);	// html 형식으로 data를 # 에 넣겠음
         },
         error :  function(request,status,error) {
            }
      });

   })
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
                            <h2 class="pageheader-title">Member List</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Account</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Member List</li>
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
                <div class="row">

                        <!-- ============================================================== -->
                        <!-- hoverable table -->
                        <!-- ============================================================== -->
                        <div>
                            <div class="card">
                                <div class="card-header">
                                	요기는 필터가 들어갈 자리 / 그리고 삭제버튼도 들어갈거임. 선택한거 삭제 할 수 있도록
                                </div>
                                
                                <!-- ajax 사용해서 회원 목록 가져오기 -->
                                <div class="card-body" id="tablebody">
<!--                                     <table class="table table-hover"> -->
<!--                                         <thead> -->
<!--                                             <tr> -->
<!--                                                 <th scope="col">#</th> -->
<!--                                                 <th scope="col">userId</th> -->
<!--                                                 <th scope="col">userName</th> -->
<!--                                                 <th scope="col">userTel</th> -->
<!--                                                 <th scope="col">password</th> -->
<!--                                                 <th scope="col">email</th> -->
<!--                                                 <th scope="col">nation</th> -->
<!--                                                 <th scope="col">gender</th> -->
<!--                                                 <th scope="col">age</th> -->
<!--                                                 <th scope="col">DEL</th> -->
<!--                                             </tr> -->
<!--                                         </thead> -->
<!--                                         <tbody> -->
<%--                                         <c:forEach var='vo' items="${mList}"> --%>
<!--                                         	<tr> -->
<!--                                         		<td></td> -->
<%--                                         		<td>${vo.userId }</td> --%>
<%--                                         		<td>${vo.userName }</td> --%>
<%--                                         		<td>${vo.userTel }</td> --%>
<%--                                         		<td>${vo.password }</td> --%>
<%--                                         		<td>${vo.email }</td> --%>
<%-- 												<td>${vo.nation }</td> --%>
<%--                                         		<td>${vo.gender }</td> --%>
<%--                                         		<td>${vo.age }</td> --%>
<!--                                         		<td></td> -->
<!--                                         	</tr> -->
<%--                                         </c:forEach> --%>
<!--                                         </tbody> -->
<!--                                     </table> -->
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end hoverable table -->
                        <!-- ============================================================== -->

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
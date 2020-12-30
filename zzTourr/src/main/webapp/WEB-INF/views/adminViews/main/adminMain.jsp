<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>adminMain.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>
	
    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>

</head>
<body>
<!-- ★★★★★★ main ★★★★★★ -->



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
                            <h2 class="pageheader-title">Main</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Main</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Main</li>
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
                아직
                </div>
				<!-- ============================================================== -->
                <!-- end content -->
                <!-- ============================================================== -->
        	</div>
        	
			<!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
			<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_footer.jsp" />
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
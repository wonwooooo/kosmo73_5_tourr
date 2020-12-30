<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>adminReservDetail.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
	<jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_css.jsp"/>

    <!-- Optional JavaScript -->
    <jsp:include page="/WEB-INF/views/adminViews/adminLayout/admin_js.jsp"/>

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
                            <h2 class="pageheader-title">Reservation Detail</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Pages</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Blank Pageheader</li>
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
				    <!-- basic table -->
				    <!-- ============================================================== -->
				    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
				        <div class="card">
				            <h5 class="card-header">Basic Table</h5>
				            <div class="card-body">
				                <table class="table">
				                    <thead>
				                        <tr>
				                            <th scope="col">#</th>
				                            <th scope="col">First</th>
				                            <th scope="col">Last</th>
				                            <th scope="col">Handle</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                        <tr>
				                            <th scope="row">1</th>
				                            <td>Mark</td>
				                            <td>Otto</td>
				                            <td>@mdo</td>
				                        </tr>
				                        <tr>
				                            <th scope="row">2</th>
				                            <td>Jacob</td>
				                            <td>Thornton</td>
				                            <td>@fat</td>
				                        </tr>
				                        <tr>
				                            <th scope="row">3</th>
				                            <td>Larry</td>
				                            <td>the Bird</td>
				                            <td>@twitter</td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
				        </div>
				    </div>
				    <!-- ============================================================== -->
				    <!-- end basic table -->
				    <!-- ============================================================== -->
				    <!-- ============================================================== -->
				    <!-- striped table -->
				    <!-- ============================================================== -->
				    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
				        <div class="card">
				            <h5 class="card-header">Striped Table</h5>
				            <div class="card-body">
				                <table class="table table-striped">
				                    <thead>
				                        <tr>
				                            <th scope="col">#</th>
				                            <th scope="col">First</th>
				                            <th scope="col">Last</th>
				                            <th scope="col">Handle</th>
				                        </tr>
				                    </thead>
				                    <tbody>
				                        <tr>
				                            <th scope="row">1</th>
				                            <td>Mark</td>
				                            <td>Otto</td>
				                            <td>@mdo</td>
				                        </tr>
				                        <tr>
				                            <th scope="row">2</th>
				                            <td>Jacob</td>
				                            <td>Thornton</td>
				                            <td>@fat</td>
				                        </tr>
				                        <tr>
				                            <th scope="row">3</th>
				                            <td>Larry</td>
				                            <td>the Bird</td>
				                            <td>@twitter</td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
				        </div>
				    </div>
				    <!-- ============================================================== -->
				    <!-- end striped table -->
				    <!-- ============================================================== -->
				</div>
				<div class="row">
                    <!-- ============================================================== -->
                    <!-- bordered table -->
                    <!-- ============================================================== -->
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Bordered Table</h5>
                            <div class="card-body">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">First</th>
                                            <th scope="col">Last</th>
                                            <th scope="col">Handle</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td colspan="2">Larry the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end bordered table -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- hoverable table -->
                    <!-- ============================================================== -->
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">Hoverable Table</h5>
                            <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">First</th>
                                            <th scope="col">Last</th>
                                            <th scope="col">Handle</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td colspan="2">Larry the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
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
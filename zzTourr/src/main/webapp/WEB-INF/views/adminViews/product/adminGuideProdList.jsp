<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>adminProductList.jsp</title>

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
                            <h2 class="pageheader-title">Guide</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Product</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Guide</li>
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
                <div class="row,">

					<!-- ============================================================== -->
					<!-- recent orders  -->
					<!-- ============================================================== -->
					<div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
					    <div class="card">
					        <h5 class="card-header">Recent Orders</h5>
					        <div class="card-body p-0">
					            <div class="table-responsive">
					                <table class="table">
					                    <thead class="bg-light">
					                        <tr class="border-0">
					                            <th class="border-0">#</th>
					                            <th class="border-0">사진</th>
					                            <th class="border-0">가이드 이름</th>
					                            <th class="border-0">가이드 ID</th>
					                            <th class="border-0">지역</th>
					                            <th class="border-0">{그 외}</th>
					                            <th class="border-0">{칼럼명}</th>
					                            <th class="border-0">{확인}</th>
					                            <th class="border-0">{ㄱㄱ}</th>
					                        </tr>
					                    </thead>
					                    <tbody>
					                        <tr>
					                            <td>1</td>
					                            <td>
					                                <div class="m-r-10"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/product-pic.jpg" alt="user" class="rounded" width="45"></div>
					                            </td>
					                            <td>Product #1 </td>
					                            <td>id000001 </td>
					                            <td>20</td>
					                            <td>$80.00</td>
					                            <td>27-08-2018 01:22:12</td>
					                            <td>Patricia J. King </td>
					                            <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
					                        </tr>
					                        <tr>
					                            <td>2</td>
					                            <td>
					                                <div class="m-r-10"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
					                            </td>
					                            <td>Product #2 </td>
					                            <td>id000002 </td>
					                            <td>12</td>
					                            <td>$180.00</td>
					                            <td>25-08-2018 21:12:56</td>
					                            <td>Rachel J. Wicker </td>
					                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
					                        </tr>
					                        <tr>
					                            <td>3</td>
					                            <td>
					                                <div class="m-r-10"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
					                            </td>
					                            <td>Product #3 </td>
					                            <td>id000003 </td>
					                            <td>23</td>
					                            <td>$820.00</td>
					                            <td>24-08-2018 14:12:77</td>
					                            <td>Michael K. Ledford </td>
					                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
					                        </tr>
					                        <tr>
					                            <td>4</td>
					                            <td>
					                                <div class="m-r-10"><img src="${pageContext.request.contextPath}/resources/adminTemplate/assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
					                            </td>
					                            <td>Product #4 </td>
					                            <td>id000004 </td>
					                            <td>34</td>
					                            <td>$340.00</td>
					                            <td>23-08-2018 09:12:35</td>
					                            <td>Michael K. Ledford </td>
					                            <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
					                        </tr>
					                    </tbody>
					                </table>
					            </div>
					        </div>
					    </div>
					</div>
					<!-- ============================================================== -->
					<!-- end recent orders  -->
					<!-- ============================================================== -->

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
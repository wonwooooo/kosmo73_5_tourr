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
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Reservation</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Detail</li>
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
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<!-- HttpServletRequest input 타입으로 aid 값 보내기 -->
					<div class="card">
						<h5 class="card-header">예약번호 : {요기다 받아오기}</h5>
						<div class="card-body">


							<div class="row">
							    <!-- ============================================================== -->
							    <!-- basic table -->
							    <!-- ============================================================== -->
							    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
							        <div class="card">
							            <h5 class="card-header">예약정보1</h5>
							            <div class="card-body">
							                <table class="table">
							                    <thead>
							                        <tr>
							                            <th scope="col">예약일</th>
							                            <th scope="col">호텔명</th>
							                            <th scope="col">객실명</th>
							                            <th scope="col">수량</th>
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
							            <h5 class="card-header">예약정보2</h5>
							            <div class="card-body">
							                <table class="table table-striped">
							                    <thead>
							                        <tr>
							                            <th scope="col">체크인</th>
							                            <th scope="col">체크아웃</th>
							                            <th scope="col">인원</th>
							                            <th scope="col">예약상태</th>
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
			                            <h5 class="card-header">기본정보</h5>
			                            <div class="card-body">
			                                <table class="table table-bordered">
			                                    <thead>
			                                        <tr>
			                                            <th scope="col">회원id</th>
			                                            <th scope="col">예약자명</th>
			                                            <th scope="col">투숙자명</th>
			                                            <th scope="col">투숙자연락처</th>
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
			                            <h5 class="card-header">결제관리</h5>
			                            <div class="card-body">
			                                <table class="table table-hover">
			                                    <thead>
			                                        <tr>
			                                            <th scope="col">금액</th>
			                                            <th scope="col">수수료</th>
			                                            <th scope="col">입금액</th>
			                                        </tr>
			                                    </thead>
			                                    <tbody>
			                                        <tr>
			                                            <th scope="row">1</th>
			                                            <td>Mark</td>
			                                            <td>Mark</td>
			                                        </tr>
			                                        <tr>
			                                            <th scope="row">2</th>
			                                            <td>Jacob</td>
			                                            <td>Mark</td>
			                                        </tr>
			                                        <tr>
			                                            <th scope="row">3</th>
			                                            <td >Larry the Bird</td>
			                                            <td>Mark</td>
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
			                    <!-- 댓글 등록 -->
			                    <!-- ============================================================== -->
								<div class="row" style="padding-top:50px;">
									<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
										<h4>Leave a Coment:</h4> 
										<div id="depth2"> 
											<table>
												<tr>
													<td id="co_num"></td>  
													<td id="co_writer"></td>
													<td id="co_comment"></td>
													<td id="co_date"></td> 
												</tr>
											</table>
										</div>
										<form name="comentView" id="comentView" method="post" action="javascript:comment_submit();">
											<input type="hidden" name="parent" value="${alien.aid}" />
											<input type="hidden" name="writer" value="지나가는행인" /> 
											<!--아이디별 작성자 구분 필요 ★-->
											<!-- depth -- default 값은 1인데, 위에 댓글이 정해지면 depth2로 변경되고 , depth2는 co_num으로 들어간다. -->
											<input type="hidden" id="depth" name="depth" value="1" />					
											<input type="hidden" id="pe_depth" name="pe_depth" value="0"/>
											<div > <!-- 한줄로 만들기  -->
												<input type="text" class="form-control" name="comment" placeholder="">
												<button type="submit" class="btn btn-outline-secondary"> 등록  </button>
											</div>
										</form>
									</div>
								</div>
			                    <!-- ============================================================== -->
			                    <!-- end 댓글 등록 -->
			                    <!-- ============================================================== -->
								
								
			                    <!-- ============================================================== -->
								<!-- comment 리스트 들어갈 곳  -->
			                    <!-- ============================================================== -->
								<div id="commentBody" style="padding-top:20px; padding-bottom:20px;"></div>
								<div class="form-group row text-right">
									<div class="col-12 col-sm-12">
										<button class="btn btn-space btn-secondary" onclick="history.back()">목록</button>
										<!-- 보던목록 페이지로 돌아가야함 / 페이징 처리 붙이고 난 후에 -->
									</div>
								</div>
			                    <!-- ============================================================== -->
								<!-- end comment 리스트 들어갈 곳  -->
			                    <!-- ============================================================== -->
							</div> <!-- card-body -->
						</div>
				</div>
				<!-- ============================================================== -->
                <!-- end content -->
                <!-- ============================================================== -->
			</div> <!-- container-fluid dashboard-content -->
		
		
		
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 20201229 추가  custom tag는  tagdir="/WEB-INF/tags"를 꼭 지켜야한다.-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



                        <!-- ============================================================== -->
                        <!-- campaign data -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-7 col-sm-12 col-12">
                            <!-- ============================================================== -->
                            <!-- campaign tab one -->
                            <!-- ============================================================== -->
                            <div class="influence-profile-content pills-regular">
                               <input type="hidden" name="start" id="start" value="1" />
                               <input type="hidden" name="end" id="start" value="5" />
                            
                            	<!-- ▶▶▶ 탭 제목 ◀◀◀ -->
                                <ul class="nav nav-pills mb-3 nav-justified" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active show" id="pills-campaign-tab" data-toggle="pill" href="#pills-campaign" role="tab" aria-controls="pills-campaign" aria-selected="true">Total</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-packages-tab" data-toggle="pill" href="#pills-packages" role="tab" aria-controls="pills-packages" aria-selected="false">Room</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-selected="false">Guide</a>
                                    </li>
                                </ul>
                                <!-- ▶▶▶ end 탭 제목 ◀◀◀ -->
                                
                                
                                <!-- ▶▶▶ 탭 내용 ◀◀◀ -->
                                <div class="tab-content" id="pills-tabContent">

                                    <!-- ▶▶▶ Total ◀◀◀ -->
                                    <div class="tab-pane fade active show" id="pills-campaign" role="tabpanel" aria-labelledby="pills-campaign-tab">
                                        <div class="card">
                                        
                                            <div class="card-header">
                                            	요기는 검색 필터들
                                            </div>
                                            
                                            <!-- ▷▷▷ Total Table ◁◁◁ -->
                                            <div class="card-body">
								                <div class="row">
								                    <!-- ============================================================== -->
								                    <!-- data table  -->
								                    <!-- ============================================================== -->
								                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
					                                        <thead>
					                                            <tr>
					                                            	<th>분류</th>
					                                                <th>예약일</th>
					                                                <th>접수번호</th>
					                                                <th>상품명</th>
					                                                <th>예약자명</th>
					                                                <th>이용 시작일</th>
					                                                <th>이용 종료일</th>
					                                                <th>판매금액</th>
					                                                <th>입금액</th>
					                                                <th>예약상태</th>
					                                            </tr>
					                                            
					                                        </thead>
					                                        
					                                        <!-- 요 부분이 값을 자동으로 받아와야 하는 부분임 -->
					                                        <c:forEach var='vo' items="${tList }">
					                                        <tbody>
					                                        	<tr>
					                                        		<td>${vo.category }</td>
					                                        		<td>${vo.resDate2 }</td>
					                                       			<td>
					                                       				<a href="/zzTourr2/adminViews/reservation/adminReservDetail.trip">
					                                       					${vo.resId }
					                                        			</a>
					                                        		</td>
					                                        		<td>${vo.productId }</td>
					                                        		<td>${vo.reservName }</td>
				                                        		<c:choose>
				                                        			<c:when test="${vo.category eq '숙소'}">
					                                        			<td>${vo.checkInDate2 }</td>
					                                        			<td>${vo.checkOut2 }</td>
					                                        		</c:when>
					                                        		<c:when test="${vo.category eq '가이드' }">
					                                        			<td>${vo.checkInDate }</td>
					                                        			<td>${vo.checkOut }</td>
					                                        		</c:when>
				                                        		</c:choose>
					                                        		<td>${vo.reservPrice }</td>
					                                        	<c:if test="${vo.category eq '숙소' }">
					                                        		<td>${vo.reservPrice * 0.87}</td>
					                                        	</c:if>
					                                        	<c:if test="${vo.category != '숙소' }">
					                                        		<td>${vo.reservPrice * 0.85}</td>
					                                        	</c:if>
					                                        	<c:choose>
					                                        		<c:when test="${vo.resState == '예약대기' }">
					                                        			<td><span class="badge-dot badge-brand mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        		<c:when test="${vo.resState eq '예약완료' }">
					                                        			<td><span class="badge-dot badge-success mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        	</c:choose>
					                                        </tbody>
					                                        </c:forEach>
					                                        
					                                    </table>
					                                    
					                                    <!-- 페이징 커스텀 태그 20201229-->
														<custom:paging jsFunctionNm="changeLocationHash" pageMaker="${pageMaker}"/>
					                                    
								                    </div>
								                    <!-- ============================================================== -->
								                    <!-- end data table  -->
								                    <!-- ============================================================== -->
								                </div>
                                            </div>
											<!-- ▷▷▷ end Total Table ◁◁◁ -->
											
                                        </div>
                                        
                                        <!-- 페이징 -->
<!--                                         <nav aria-label="Page navigation example"> -->
<!--                                             <ul class="pagination"> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--                                                 <li class="page-item active"><a class="page-link " href="#">2</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
<!--                                             </ul> -->
<!--                                         </nav> -->
                                    </div>
                                    <!-- ▶▶▶ end Total ◀◀◀ -->
                                    
                                    
                                    <!-- ▶▶▶ Room ◀◀◀ -->
                                    <div class="tab-pane fade" id="pills-packages" role="tabpanel" aria-labelledby="pills-packages-tab">
                                        <div class="card">
                                            <div class="card-header">
                                            	요기는 검색 필터들
                                            </div>

                                            <!-- ▷▷▷ Room Table ◁◁◁ -->
                                            <div class="card-body">
								                <div class="row">
								                    <!-- ============================================================== -->
								                    <!-- data table  -->
								                    <!-- ============================================================== -->
								                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
					                                        <thead>
					                                            <tr>
					                                            	<th>분류</th>
					                                                <th>예약일</th>
					                                                <th>접수번호</th>
					                                                <th>상품명</th>
					                                                <th>예약자명</th>
					                                                <th>이용 시작일</th>
					                                                <th>이용 종료일</th>
					                                                <th>판매금액</th>
					                                                <th>입금액</th>
					                                                <th>예약상태</th>
					                                            </tr>
					                                        </thead>
					                                        
					                                        <!-- 요 부분이 값을 자동으로 받아와야 하는 부분임 -->
					                                        <c:forEach var='vo' items="${rList }">
					                                        <tbody>
					                                        	<tr>
					                                        		<td>${vo.category }</td>
					                                        		<td>${vo.resDate2 }</td>
					                                        		<td>${vo.resId }</td>
					                                        		<td>${vo.productId }</td>
					                                        		<td>${vo.reservName }</td>
					                                        		<td>${vo.checkInDate2 }</td>
					                                        		<td>${vo.checkOut2 }</td>
					                                        		<td>${vo.reservPrice }</td>
					                                        		<td>${vo.reservPrice*0.87 }</td>
					                                        		<c:choose>
					                                        		<c:when test="${vo.resState == '예약대기' }">
					                                        			<td><span class="badge-dot badge-brand mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        		<c:when test="${vo.resState eq '예약완료' }">
					                                        			<td><span class="badge-dot badge-success mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        	</c:choose>
					                                        	</tr>
					                                        </tbody>
					                                        </c:forEach>
					                                      
					                                    </table>
								                    </div>
								                    <!-- ============================================================== -->
								                    <!-- end data table  -->
								                    <!-- ============================================================== -->
								                </div>
                                            </div>
											<!-- ▷▷▷ end Room Table ◁◁◁ -->

                                        </div>
                                        
                                        <!-- 페이징 -->
<!--                                         <nav aria-label="Page navigation example"> -->
<!--                                             <ul class="pagination"> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--                                                 <li class="page-item active"><a class="page-link " href="#">2</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
<!--                                             </ul> -->
<!--                                         </nav> -->
                                    </div>
                                    <!-- ▶▶▶ end Room ◀◀◀ -->
                                    
                                    
                                    <!-- ▶▶▶ Guide ◀◀◀ -->
                                    <div class="tab-pane fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
                                        <div class="card">
                                            <div class="card-header">
                                            	요기는 검색 필터들
                                            </div>

                                            <!-- ▷▷▷ Guide Table ◁◁◁ -->
                                            <div class="card-body">
								                <div class="row">
								                    <!-- ============================================================== -->
								                    <!-- data table  -->
								                    <!-- ============================================================== -->
								                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
					                                        <thead>
					                                            <tr>
					                                            	<th>분류</th>
					                                                <th>예약일</th>
					                                                <th>접수번호</th>
					                                                <th>상품명</th>
					                                                <th>예약자명</th>
					                                                <th>이용 시작일</th>
					                                                <th>이용 종료일</th>
					                                                <th>판매금액</th>
					                                                <th>입금액</th>
					                                                <th>예약상태</th>
					                                            </tr>
					                                        </thead>
					                                        
					                                        <!-- 요 부분이 값을 자동으로 받아와야 하는 부분임 -->
															<c:forEach var='vo' items="${gList }">
					                                        <tbody>
					                                        	<tr>
					                                        		<td>${vo.category }</td>
					                                        		<td>${vo.resDate2 }</td>
					                                        		<td>${vo.resId }</td>
					                                        		<td>${vo.productId }</td>
					                                        		<td>${vo.reservName }</td>
					                                        		<td>${vo.checkInDate }</td>
					                                        		<td>${vo.checkOut }</td>
					                                        		<td>${vo.reservPrice }</td>
					                                        		<td>${vo.reservPrice }</td>
					                                        		<c:choose>
					                                        		<c:when test="${vo.resState == '예약대기' }">
					                                        			<td><span class="badge-dot badge-brand mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        		<c:when test="${vo.resState eq '예약완료' }">
					                                        			<td><span class="badge-dot badge-success mr-1"></span>${vo.resState }</td>
					                                        		</c:when>
					                                        	</c:choose>
					                                        	</tr>
					                                        </tbody>
					                                        </c:forEach>
					                                        
					                                    </table>
								                    </div>
								                    <!-- ============================================================== -->
								                    <!-- end data table  -->
								                    <!-- ============================================================== -->
								                </div>
                                            </div>
											<!-- ▷▷▷ end Guide Table ◁◁◁ -->

                                        </div>
                                        
                                        <!-- 페이징 -->
<!--                                         <nav aria-label="Page navigation example"> -->
<!--                                             <ul class="pagination"> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Previous</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--                                                 <li class="page-item active"><a class="page-link " href="#">2</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--                                                 <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
<!--                                             </ul> -->
<!--                                         </nav> -->
                                    </div>
                                    <!-- ▶▶▶ end Guide ◀◀◀ -->
                                
                                    
                                </div>
                                <!-- ▶▶▶ end 탭 내용 ◀◀◀ -->
                                
                                
                            </div>
                            <!-- ============================================================== -->
                            <!-- end campaign tab one -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- end campaign data -->
                        <!-- ============================================================== -->


<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="jsFunctionNm" required="true"%> <!-- 페이징 클릭시 수행될 javascript funciton 명-->
<%@ attribute name="pageMaker" required="true" type="com.zzTourr.domain.PageMaker"%> <!-- pageMaker Object -->
<%@ attribute name="ahref" required="false"%>
<%@ attribute name="btnLabel" required="false"%>

<c:set var="pageURL" value="${requestScope['javax.servlet.forward.servlet_path']}"/>

    <!-- 버튼  20201229-->
    <nav aria-label="Page navigation example" style="margin-top:10px;">
		<ul class="pagination" ${(pageMaker.totalCount == 0) ? 'style="display:none;"' : ''}>
			<li><a href="javascript:${jsFunctionNm}('${pageMaker.firstPage}')" class="page-item">
			<span class="page-link">첫페이지</span></a></li>
			<c:if test="${pageMaker.prev}">
				<li><a href="javascript:${jsFunctionNm}('${pageMaker.startPage-1}')" class="page-item">
				<span class="page-link">이전 페이지</span></a></li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="page">
				<li><a href="javascript:${jsFunctionNm}('${page}')" class="${(page == param.page) ? 'page-item active' : ''}">
				<span class="page-link">${page}</span></a></li>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a href="javascript:${jsFunctionNm}('${pageMaker.endPage + 1}')" class="page-item">
				<span class="page-link">다음 페이지</span></a></li>
			</c:if>
			<li><a href="javascript:${jsFunctionNm}('${pageMaker.lastPage}')" class="page-item">
			<span class="page-link">마지막 페이지</span></a></li>
		</ul>
	</nav> 

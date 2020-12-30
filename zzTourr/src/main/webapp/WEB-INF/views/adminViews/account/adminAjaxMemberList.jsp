<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- 
	회원 목록 불러오기 _ ajax
 -->

	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">userId</th>
				<th scope="col">userName</th>
				<th scope="col">userTel</th>
				<th scope="col">password</th>
				<th scope="col">email</th>
				<th scope="col">nation</th>
				<th scope="col">gender</th>
				<th scope="col">age</th>
				<th scope="col">DEL</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var='vo' items="${mList}">
				<tr>
					<td></td>
					<td>${vo.userId }</td>
					<td>${vo.userName }</td>
					<td>${vo.userTel }</td>
					<td>${vo.password }</td>
					<td>${vo.email }</td>
					<td>${vo.nation }</td>
					<td>${vo.gender }</td>
					<td>${vo.age }</td>
					<td></td>
				</tr>
			</c:forEach>
    	</tbody>
	</table>


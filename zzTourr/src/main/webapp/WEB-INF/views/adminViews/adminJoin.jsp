<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminJoin.jsp</title>
</head>
<body>


	<form action='adminInsert.trip' method='post'>
		사번 <input type='text' name='adminId'><br/>
		비번 <input type='password' name='adminPw'><br/>
		메일 <input type='text' name='adminMail'><br/>
		이름 <input type='text' name='adminName'><br/>
		사진 <input type='file' name='adminImg'><br/>
		<input type="submit" value="가입">
	</form>


</body>
</html>
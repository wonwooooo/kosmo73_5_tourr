<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
    <c:if test="${result == 0}">
        <script type="text/javascript">
        alert("로그아웃 에러!");
            window.history.back();
        </script>
    </c:if>
    <c:if test="${result != 0}">
        <script type="text/javascript">
            alert("로그아웃 완료 / 다시 로그인 페이지로");
            window.self.location="/zzTourr/adminViews/enter/adminLogin.trip";
        </script>
    </c:if>
</body>
</html>
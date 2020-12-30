<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>adminJoin.jsp</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminTemplate/assets/libs/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminTemplate/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
    
    
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

</head>
<body>

    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container" action='adminInset.trip' method='post'>
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registrations Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
            	<!-- 사번 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="adminId" required placeholder="Identification" autocomplete="off">
                </div>
                
                <!-- 비번 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" id="pass1" name='adminPw' type="password" required placeholder="Password">
                </div>
                
            	<!-- 비번확인 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" required placeholder="Confirm">
                </div>
                
                <!-- 메일 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="adminName" required placeholder="E-mail" autocomplete="on">
                </div>
                
                <!-- 이름 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="adminName" required placeholder="Username" autocomplete="on">
                </div>
                
                <!-- 사진 -->
                <div class="form-group">
                    <input class="form-control form-control-lg" type="file" name="adminImg" value='증명사진'>
                </div>

                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">Register My Account</button>
                </div>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a></span>
                    </label>
                </div>
                <div class="form-group row pt-0">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
                        <button class="btn btn-block btn-social btn-facebook " type="button">Facebook</button>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <button class="btn  btn-block btn-social btn-twitter" type="button">Twitter</button>
                    </div>
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>Already member? <a href="#" class="text-secondary">Login Here.</a></p>
            </div>
        </div>
    </form>

</body>
</html>
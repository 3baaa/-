<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>JBHard Member Login</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/login.css">
	<style type="text/css">
	body {
  background: #ffff;
  font-family: arial;
}
.login-form h1 {
  font-size: 50px;
  text-align: center;
  color: #fed136;
  margin-bottom: 30px;
  font-weight: normal;
}
.login-form .social-icon {
    width: 100%;
    font-size: 20px;
    padding-top: 20px;
    color: #fff;
    text-align: center;
    float: left;
}
.login-form {
    background: #fff;
    width: 450px;
    border-radius: 6px;
    margin: 0 auto;
    display: table;
    padding: 15px 30px 30px;
    box-sizing: border-box;
}
.form-group {
  float: left;
  width: 100%;
  margin: 0 0 15px;
  position: relative;
}
.login-form input {
    width: 100%;
    padding: 5px;
    height: 56px;
    border-radius: 74px;
    border: 1px solid #fed136;
    box-sizing: border-box;
    font-size: 15px;
    padding-left: 75px;
}
.login-form .form-group .input-icon {
    font-size: 15px;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    align-items: center;
    position: absolute;
    border-radius: 25px;
    bottom: 0;
    height: 100%;
    padding-left: 35px;
    color: #666;
}
.login-form .login-btn {
  background: #fed136;
  padding: 11px 50px;
  border-color: #fff545;
  color: #fff;
  text-align: center;
  margin: 0 auto;
  font-size: 20px;
  border: 1px solid #fed136;
  border-radius: 44px;
  width: 100%;
  height: 56px;
  cursor: pointer;
}
.login-form .reset-psw {
  float: left;
  width: 100%;
  text-decoration: none;
  color: #756f05;
  font-size: 14px;
  text-align: center;
  margin-top: 11px;
}
.login-form .social-icon button {
    font-size: 20px;
    color: white;
    height: 50px;
    width: 50px;
    background: #ffd400;
    border-radius: 60%;
    margin: 0px 10px;
    border: none;
    cursor: pointer;
}
.login-form button:hover{
  opacity: 0.9;
}
.login-form .seperator {
  float: left;
  width: 100%;
  border-top: 1px solid #fed136;
  text-align: center;
  margin: 50px 0 0;
}
.login-form .seperator b {
  width: 40px;
  height: 40px;
  font-size: 17px;
  text-align: center;
  line-height: 37px;
  background: #fff;
  display: inline-block;
  border: 1px solid #fed136;
  border-radius: 55%;
  position: relative;
  top: -22px;
  z-index: 1;
}
.login-form p {
  color: #756f05;
  float: left;
  width: 100%;
  text-align: center;
  font-size: 16px;
  margin: 0 0 10px;
}
@media screen and (max-width:767px) {
.login-form {
    width: 90%;
    padding: 15px 15px 30px;
}
}
	.login-form {
		width: 600px;
		margin: 120px auto;
		text-align: center;
	}
	.login-form .login {
      font-family: 'Kaushan Script', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; 
	}
	}
	</style>
</head>
<body>
	<div class="login-form">
		<form method="post" action="${contextPath }/login/checklogin.do" encType="utf-8">
			<h1 class="login">JB-Hard</h1>
			<div class="form-group">
				<input type="text" name="id" placeholder="아이디를 입력해주세요">
				<span class="input-icon"><i class="fa fa-user"></i></span>
			</div>
			<div class="form-group">
				<input type="password" name="pwd" placeholder="비밀번호를 입력해주세요"/>
				<span class="input-icon"><i class="fa fa-lock"></i></span>
			</div>			
			<button type="submit" class="login-btn">Login</button>			
			
			
			
		</form>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
	// JS not require for this snippet
</script>
</body>
</html>

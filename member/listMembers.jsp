<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,mem.*" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <%
    	request.setCharacterEncoding("utf-8");
    %>

<!DOCTYPE html>
<html>
<head>
<c:choose>
	<c:when test='${msg=="addMember" }'>
		<script>
			window.onload=function(){
				alert("회원을 등록했습니다");
			}
		</script>
	</c:when>
	<c:when test='${msg=="modified" }'>
		<script>
			window.onload=function(){
				alert("회원 정보를 수정했습니다");
			}
		</script>
	</c:when>
	<c:when test='${msg=="deleted" }'>
		<script>
			window.onload=function(){
				alert("회원 정보를 삭제했습니다");
			}
		</script>
	</c:when>
</c:choose>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td{
		text-align:center;
	}
	.n{
		width:100%;
		font-size:2em;
		font-weight:bold;
	}
</style>
 
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="${contextPath }/page/vendor/bootstrap/css/bootstrap.min.css">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" type="text/css" href="${contextPath }/page/vendor/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Kaushan+Script' >
  <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'>
  <link rel='stylesheet' type='text/css' href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'>

  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="${contextPath }/page/css/agency.min.css">
</head>
<body>
<c:import url="/board/listArticles.do"></c:import>

 <!-- information -->
  <section class="bg-light page-section" id="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">회원정보</h2>
          <h3 class="section-subheading text-muted">회원정보를 수정할수있습니다</h3>
        </div>
      </div>
      <div class="row">
      <table class="table table-hover">
	 <tr class="table-warning">
         <td>아이디</td>
         <td>비밀번호</td>
         <td>이름</td>
         <td>이메일</td>
         <td>가입일</td>
         <td>수정</td>
		 <td>삭제</td>
     </tr>
	
	<c:choose>
		<c:when test="${membersList==null }">
		<tr>
			<td colspan=5>
				<b>등록된 회원이 없습니다.</b>
			</td>
		</tr>
		</c:when>
		<c:when test="${membersList!=null }">
			<c:forEach var="data" items="${membersList }">
				<tr align="center">
					<td>${data.id }</td>
					<td>${data.pwd }</td>
					<td>${data.name }</td>
					<td>${data.email }</td>
					<td>${data.joinDate }</td>
					<td><a href="${contextPath }/member/modMemberForm.do?id=${data.id}">수정</a></td>
					<td><a href="${contextPath }/member/delMember.do?id=${data.id}">삭제</a></td>
				</tr>
		</c:forEach>
		</c:when>
	</c:choose>
	</table>
	  </div>
    </div>
  </section>
  
<!-- Bootstrap core JavaScript -->
	<script src="<c:url value="/page/vendor/jquery/jquery.min.js" />"></script>
  <script src="<c:url value="/page/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

  <!-- Plugin JavaScript -->
  <script src="<c:url value="/page/vendor/jquery-easing/jquery.easing.min.js" />"></script>

  <!-- Contact form JavaScript -->
  <script src="<c:url value="/page/js/jqBootstrapValidation.js" />"></script>
  <script src="<c:url value="/page/js/contact_me.js" />"></script>

  <!-- Custom scripts for this template -->
  <script src="<c:url value="/page/js/agency.min.js" />"></script>
</body>
</html>
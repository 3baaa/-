<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Agency - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="${contextPath }/page/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="${contextPath }/page/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link href="${contextPath }/page/css/agency.min.css" rel="stylesheet">
  
<style>
	td{
		text-align:center;
	}
	td a{
		color:black;
	}
	.logout{
		width:30%;
	}
	n{
		margin:0 auto;
		font-size:1.5em;
		font-weight:bold;
	}
</style>
</head>
<body id="page-top">

 <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
 <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">JBHard</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
         <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">프로젝트</a>
          </li>
          <c:if test="${sessionScope.id == 'admin' }">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">회원정보</a>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="${contextPath }/board/articleForm.do">프로젝트 추가</a>
          </li>
            <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="${contextPath }/member/memberForm.do">회원추가</a>
          </li>
          </c:if>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="${contextPath }/login/logout.do">로그아웃</a>
          </li>
        </ul>
      </div>
</div>
</nav>

 <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To Our JBHard!</div>
        <div class="intro-heading text-uppercase">${sessionScope.id }</div>
      </div>
    </div>
  </header>
  
<!-- project -->
  <section class="page-section" id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">프로젝트</h2>
          <h3 class="section-subheading text-muted">현재사용할수있는 프로젝트입니다</h3>
        </div>
      </div>
    <div class="row">
    	 <table class="table table-hover">
	<c:choose>
		<c:when test="${articlesList == null }">
			<script>
				location.href="${contextPath }/login/logout.do";
			</script>
		</c:when>
		<c:when test="${articlesList !=null }">
			<c:forEach var="article" items="${articlesList }" varStatus="articleNum">
					<c:choose>
						<c:when test='${article.level > 1 }'>
									<tr>
										<td>
											${article.id }
										</td>
										<td>
											<a href="${contextPath }/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
										</td>
										<td>
											${article.writeDate }
										</td>
									</tr>			
						</c:when>
						<c:otherwise>
								<tr>
									<th colspan="3">
									<button type="button" class="btn btn-outline-dark" style="n" onclick="location.href='${contextPath }/board/viewArticle.do?articleNO=${article.articleNO}'">
									프로젝트명 : ${article.title }
									</button>
									</th>
								</tr>
								<tr class="table-warning">
									<td>
										작성자
									</td>
									<td>
										제목
									</td>
									<td>
										작성일
									</td>
								</tr>
						</c:otherwise>
					</c:choose>
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
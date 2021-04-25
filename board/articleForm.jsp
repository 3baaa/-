<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<style>
 .write {
      font-size: 40px;
	   
		text-align:center;
    }
.page-section {
  padding: 100px 0;
}

    form {
      margin: 0 auto;
      width: 900px;
      height: 500px;
      padding: 2em;
      border: 1px solid #CCC;
      border-radius: 1em;
    }
    form div + div {
      margin-top: 1em;
    }
    label {
      display: inline-block;
      width: 100px;
      text-align:left;
    }
    input,textarea {
      font : 1em sans-serif;
      width: 400px;
      -moz-box-sizing:border-box;
      box-sizing: border-box;
      border: 1px solid #999;
    }
    textarea {
      vertical-align: top;
      height: 5em;
      resize: vertical;
    }
    #msg {
      height: 176px;
    }
    .button {
      padding-left: 90px;
    }
    button {
      margin-left: .5em;
    }
   

</style>
<meta charset="UTF-8">
 <link href="${contextPath }/page/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath }/page/css/agency.css" rel="stylesheet">
  <!-- Custom fonts for this template -->
  <link href="${contextPath }/page/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  
  function backToList(obj){
    obj.action="${contextPath}/member/listMembers.do";
    obj.submit();
  }
</script>
</head>
<body>
	<section class="page-section" id="write">
		<div class="write" >Project Add</div>
		<form name="articleForm" method="post" action="${contextPath }/board/addArticle.do" enctype="multipart/form-data">
			
				<div>
					<label for="name">Title:</label>
					<input type="text" id="title" name="title"/></td>
				</div>
				<div>
					<label for="content">Content:</label>
					<textarea name="content" id="msg"></textarea>
				</div>
				<div class="form-group">
					<label for="File">File Upload</label>
				    <input type="file" id="File" name="FileName"/>
				</div>
	
				<div class="checkbox">
			   <label for="name">Members</label>
				<c:forEach var="mem" items="${membersList }" varStatus="memNum">
					<c:if test="${(memNum.count%4)==0 }">
						<br>
					</c:if>
				
						<input type="checkbox"   name="mem" value="${mem.id }"/>${mem.id }
					
				</c:forEach>
				</div>
						<div class="btn">
						<input type="submit" class="btn btn-primary btn-sm" value="Add"/>
						<input type="button" class="btn btn-default btn-sm" value="List" onClick="backToList(this.form)"/>
					</div>
		</form>
</section>
</body>
</html>

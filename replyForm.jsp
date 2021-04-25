<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 
<head>
<meta charset="UTF-8">
<link href="${contextPath }/page/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${contextPath }/page/css/agency.css" rel="stylesheet">
  <!-- Custom fonts for this template -->
  <link href="${contextPath }/page/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
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
      height: 600px;
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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

  function backToList(obj){
	 obj.action="${contextPath}/board/listArticles.do";
	 obj.submit();
  }
 
  function readURL(input) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $('#preview').attr('src', e.target.result);
          }
          reader.readAsDataURL(input.files[0]);
      }
  }  
</script> 
<title>프로젝트 파일 및 글추가</title>
</head>
<body>
	<section class="page-section" id="write">
 <div class="write" >File & Write Add</div>
  <form name="frmReply" method="post"  action="${contextPath}/board/addReply.do"   enctype="multipart/form-data">
    <div>
					<label for="name">Name:</label>
					${sessionScope.id }
				</div>
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
				    <input type="file" id="File" name="FileName"  onchange="readURL(this);" />
					<img  id="preview" src="#"   width=325 height=240/>
				</div>
		
			<div class="btn">
						<input type="submit" class="btn btn-primary btn-sm" value="Add"/>
						<input type="button" class="btn btn-default btn-sm" value="List" onClick="backToList(this.form)"/>
					</div>
  
  </form>
</section>
</body>
</html>

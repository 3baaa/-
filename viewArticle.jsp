<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<head>
   <meta charset="UTF-8">
	
   <title>글보기</title>
   <style>
     .img_c{
     	width:100%;
     }
     .input_c{
     	width:100%;
     }
     form{
     	margin:0 auto;
     }
	
   </style>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" >
     function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
     }
 
     function backToList2(obj){
    	obj.action="${contextPath}/member/listMembers.do";
    	obj.submit();
     }
     
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_FileName").disabled=false;
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
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
 <link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	
  <form name="frmArticle" method="post" enctype="multipart/form-data" class="form-horizontal">
  <br>
  <br>
  <br>
 <table class="table table-striped table-bordered">
	<h1 align="center" style="font-size:60px; margin:20 auto">Project</h1>
  <tr>
   <td width="20%" align="center" style="background:#87cccb; color:#ffff">
      글번호
   </td>
   <td >
    ${article.articleNO }
    <input type="hidden" name="articleNO" value="${article.articleNO}"  />
   </td>
  </tr>
  <tr>
    <td width="20%" align="center" style="background:#87cccb; color:#ffff">
      작성자 
   </td>
   <td >
   ${article.id }
   </td>
  </tr>
  <tr>
    <td width="20%" align="center" style="background:#87cccb; color:#ffff">
      제목 
   </td>
   <td>
    ${article.title }
   </td>   
  </tr>
  <tr>
    <td width="20%" align="center" style="background:#87cccb; color:#ffff">
      내용
   </td>
   <td>
    <textarea class="input_c" rows="20" cols="60"  name="content"  id="i_content"  disabled >${article.content }</textarea>
   </td>  
  </tr>
 
<c:if test="${not empty article.fileName && article.fileName!='null' }">  
<tr>
    <td width="20%" align="center" style="background:#87cccb; color:#ffff"  rowspan="2">
      이미지
   </td>
   <td>
     <input type= "hidden"   name="originalFileName" value="${article.fileName }" />
    <img  class="input_c" src="${contextPath}/download.do?articleNO=${article.articleNO}&FileName=${article.fileName}" class='img_c' id="preview"  /><br>
        </td>   
  </tr>  
  <tr>
    <td>
       <span><b>파일명 = ${article.fileName}</b></span>
       <a href="${contextPath}/download.do?FileName=${article.fileName}&articleNO=${article.articleNO}">파일 내려받기</a>
    </td>
  </tr>
 </c:if>
  <tr>
	   <td width="20%" align="center" style="background:#87cccb; color:#ffff">
	      등록일자
	   </td>
	   <td>
	   ${article.writeDate}
	   </td>   
  </tr>
    
 </table>
               <div align="center" style="margin:-10 auto">
	    <!-- <input type=button value="수정하기" onClick="fn_enable(this.form)"> -->
	    <input type=button class="btn btn-info"value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
	    <c:choose>
	    	<c:when test="${sessionScope.id=='admin' }">
	    		<input type=button class="btn btn-info" value="리스트로 돌아가기"  onClick="backToList2(this.form)">
	    	</c:when>
	    	<c:otherwise>
	    		<input type=button class="btn btn-info" value="리스트로 돌아가기"  onClick="backToList(this.form)">
	    	</c:otherwise>
	    </c:choose>
	    
	    <input type=button class="btn btn-info" value="파일및글추가히기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
  </div>
 
 </form>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>

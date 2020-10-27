<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
section#ems-detail-header {
	width: 50%;
	border: 1px solid blue;
	margin: 20px auto;
	display: flex;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5)
}
section#ems-detail-header article:first-child {
	flex: 1;
}
section#ems-detail-header article:last-child {
	flex: 2;
}
section#ems-detail-header div {
	margin: 5px;
	padding: 10px;
	border-bottom: 1px solid #ddd
}
section#ems-detail-header .title {
	display: inline-block;
	width: 25%;
	background-color: #ddd;
	font-weight: bold;
	text-align: right;
}
section#ems-detail-header .content {
	display: inline-block;
	width: 60%;
}
section#ems-detail-header img {
	margin: 5px;
	border-radius: 5px;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5)
}
section#ems-detail-body {
	width: 50%;
	margin: 10px auto;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5)
}
section#ems-button-box {
	width: 50%;
	margin: 10px auto;
	text-align: right;
}
section#ems-button-box button {
	margin: 10px;
	padding: 10px 16px;
	border: 0;
	outline: 0;
	border-radius: 5px;
	color: white;
	font-weight: bold;
}
/* button.bbs-list */
section#ems-button-box button:hover {
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.6);
}
section#ems-button-box button:nth-child(1) {
	background-color: orange;
}
section#ems-button-box button:nth-child(2) {
	background-color: skyblue;
}
section#ems-button-box button:nth-child(3) {
	background-color: violet;
}
</style>

<script>

document.addEventListener("DOMContentLoaded", function() {
    document.querySelector(".delete")
          .addEventListener("click",function() {
             document.location.href = "${rootPath}/ems/list"
          })
})
</script>
<body>

<section id="ems-detail-header">
	<article>
		<a href="${rootPath}/upload/${EMSVO.s_file1}" target=_new>
		
		<c:if test="${empty EMSVO.s_file1}">
			<img src="${rootPath}/static/files/KakaoTalk_20201023_160905651.png" width="200px">		
		</c:if>
			<c:if test="${not empty EMSVO.s_file1}">
			 <img src="${rootPath}/upload/${EMSVO.s_file1}" width="200px">
		</c:if>
		</a>
		
	
		
		
		
	</article>

	<article>
		<div class="title">제목</div>
		<div class="content">${EMSVO.s_subject}</div>
		<div class="title">작성일시</div>
		<div class="content">${EMSVO.s_date},${EMSVO.s_time}</div>
		<div class="title">발신Email</div>
		<div class="content">${EMSVO.from_email}</div>
		<div class="title">수신Email</div>
		<div class="content">${EMSVO.to_email}</div>
		
		
	</article>
</section>
<section id="ems-detail-body">${EMSVO.s_content}</section>
<section id="ems-button-box">
	<button class="list">리스트</button>
	<button class="update">수정</button>
	<button class="delete">삭제</button>
</section>




</body>
</html>
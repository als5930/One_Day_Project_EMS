<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${rootPath}/static/summernote/summernote-bs4.min.css">
<script src="${rootPath}/static/summernote/summernote-bs4.min.js"></script>
<script src="${rootPath}/static/summernote/lang/summernote-ko-KR.min.js"></script>

<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html, body {
	width: 100%;
	height: 100%;
}

body {
	display: flex;
	flex-direction: column;
}

header {
	position: relative;
	height: 400px;
	color: white;
	background-image: url("${rootPath}/static/image/002.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

nav ul {
	list-style: none;
	display: flex;
	background-color: skyblue;
	color: white;
}

nav ul li {
	display: inline-block;
	margin: 0px 0px;
	padding: 6px 12px;
	cursor: pointer;
}

nav ul li:hover {
	background-color: #ddd;
	color: black;
}

section#content {
	overflow: auto;
	flex: 1;
}

footer {
	background-color: black;
	color: white;
	text-align: center;
	padding: 10px;
}
</style>




</head>
<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="nav" />
	<tiles:insertAttribute name="content" />
	<tiles:insertAttribute name="footer" />

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script>
   
   document.addEventListener("DOMContentLoaded", function() {
      
      document.querySelector("#nav-ems").addEventListener("click",function(){
         document.location.href="${rootPath}/ems/list"
         
      })
      
   })
</script>
</head>
<body>
<nav>
	<ul>
		<li>Home</li>
		<li id ="nav-ems">이메일 관리</li>
	</ul>
</nav>

</body>
</html>
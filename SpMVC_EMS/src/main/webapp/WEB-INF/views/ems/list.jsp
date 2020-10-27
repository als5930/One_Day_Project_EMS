<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.querySelector("#ems-write").addEventListener("click",
				function() {
					document.location.href = "${rootPath}/ems/write"
				})
	})

   $(function(){
      
      $(".ems-tr").click(function(){
         let id = $(this).data("id")
         document.location.href="${rootPath}/ems/detail/" + id;
      })
      
   })
</script>
<style>
td.ems-tr {
	cursor: pointer;
}

td.ems-tr:hover {
	background-color: #ccc;
}

#ems-write {
	margin: 15px;
	cursor: pointer;
	background-color: violet;
	padding: 10px;
	float: right;
	color: white;
}

#ems-write:hover {
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.4);
}
</style>

<table class="table table-striped table-bordered table-hover">



	<thead>
		<tr>
			<th>ID</th>
			<th>발신Email</th>
			<th>수신Email</th>
			<th>발신일자</th>
			<th>발신시각</th>
			<th>메일제목</th>
			<th>메일내용</th>
			<th>첨부파일</th>



		</tr>
	</thead>
	<tbody>
		<c:if test="${empty EMS_LIST}">
			<tr>
				<td colspan="8">데이터가 없습니다</td>
			</tr>
		</c:if>
		<c:forEach items="${EMS_LIST}" var="vo" varStatus="i">
			<tr class="ems-tr" data-id="${vo.id}">
				<td>${vo.id}</td>
				<td>${vo.from_email}</td>
				<td>${vo.to_email}</td>
				<td>${vo.s_date}</td>
				<td>${vo.s_time}</td>
				<td>${vo.s_subject}</td>
				<td>${vo.s_content}</td>
				<td data-id="${vo.id}" class="ems-subject">
				<img src="${rootPath}/upload/${vo.s_file1}" width="50px">
				<img src="${rootPath}/upload/${vo.s_file2}" width="50px">
				</td>
			</tr>
			
     
      </c:forEach>
		
	</tbody>
</table>
<div>
	<button id="ems-write">작성하기</button>
</div>


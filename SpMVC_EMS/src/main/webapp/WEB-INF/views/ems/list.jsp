<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="rootPath" value="${pageContext.request.contextPath}" />
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
         
         
      </tr>
   </thead>
    <tbody>
      <c:if test="${empty EMS_LIST}">
        <tr><td colspan="6">데이터가 없습니다</td></tr>
      </c:if>
      <c:forEach items="${EMS_LIST}" var="vo" varStatus="i">
      <tr class="ems-tr" data-seq="${vo.id}">
         <td>${vo.from_email}</td>
         <td>${vo.to_email}</td>
         <td>${vo.s_time}</td>
         <td>${vo.s_date}</td>
         <td>${vo.s_subject}</td>
         <td>${vo.s_content}</td>
         <td data-seq="${vo.id}" class="ems-subject">
            
            
         </td>
 
      </tr>
      </c:forEach>
   </tbody>
</table>
<button id="bbs-write">글쓰기</button>

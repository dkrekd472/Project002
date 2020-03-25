<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<select id = "type" >
	<option value = "�Ű���̵�"/>
	<option value = "�Ű�������̵�"/>
</select>
<input type = "text" id = "search" />

<table>
	<tr>
		<td>�Ű��ȣ</td>
		<td>�۹�ȣ</td>
		<td>�������̵�</td>
		<td>�Ű��ۼ���</td>
		<td>�Ű�¥</td>
	</tr>
	<c:forEach items = "${viewAll }" var = "list">
		<tr>
			<td>${list.reportSeq }</td>
			<td><a href='detail?seq=${list.jobSeq }'>${list.jobSeq }</a></td>
			<td>${list.userId }</td>
			<td>${list.reportWriter }</td>
			<td><fmt:formatDate value="${list.reportDate }" pattern="yyyy.MM.dd"/> </td>
		</tr>
	</c:forEach>
</table>

<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="list.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="list.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="list.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>

</body>
</html>
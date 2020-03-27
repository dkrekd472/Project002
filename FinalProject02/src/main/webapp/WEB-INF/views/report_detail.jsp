<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function dayshow(){
		document.getElementById('day').style.display="block";
		document.getElementById('report').style.display="block";
	}
	
	function reportres(seq,id){
		var day = document.getElementById('day').value;
		alert("���̵� : " + id + "��¥ : " + day + "��ȣ : " + seq)
		location.href = "/report_done.do?day=" + day +"&seq=" + seq + "&id=" + id;
	}
</script>
</head>
<body>
	<table>
		<tr>
			<td>�Ű��ȣ : ${dto.reportSeq }</td>
		</tr>
		<tr>
			<td>�� ��ȣ : ${dto.jobSeq }</td>
		</tr>
		<tr>
			<td>�������̵� : ${dto.userId }</td>
		</tr>
		<tr>
			<td>�Ű��ۼ��� : ${dto.reportWriter }</td>
		</tr>
		<tr>	
			<td>�Ű�¥ : ${dto.reportDate }</td>
		</tr>
		<tr>	
			<td>���� : ${dto.reportContent }</td>
		</tr>
		
	</table>
	
	<input type = "button" value = "�ڷΰ���" onclick = "location.href = '/report_admin.do'"/>
	<input type = "button" value = "�����ϱ�" onclick = "dayshow();"/>
	<br/>
	<input type = "text" id = "day" style = "display: none"/>
	<input type = "button" id = "report" value = "Ȯ��" style = "display: none" onclick = "reportres('${dto.jobSeq }','${dto.userId }');"/>
</body>
</html>
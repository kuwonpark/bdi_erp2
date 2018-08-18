<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<body>
<div class="containor">
<%
String tId ="";
String tContent ="";
int tNo = Integer.parseInt(request.getParameter("tNo"));
int tBirth = 0;

Connection con = DBConnection.getCon();
String sql = "select tId,tContent,tNo,tbirth from test";
sql +=" where tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1,tNo);
ResultSet rs = ps.executeQuery();
if(rs.next()){
	tId = rs.getString("tId");
	tBirth = rs.getInt("tBirth");
	tContent =rs.getString("tContent");
	tNo = rs.getInt("tNo");
}
%>
	<form action="<%=rPath%>/views/test/testInsertOK.jsp"  onsubmit="return checkVal()">
	<fieldset>
		<legend>test 수정</legend>
		<table class="table table-bordered">
				<tr>
				<th>번호</th>
				<td><%=tNo%></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="tId" value="<%=tId%>"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="tPwd"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="tBirth" required value="<%=tBirth%>"></td>
				</tr>
				<tr>
					<th>소개</th>
				    <td><textarea name="tContent"><%=tContent%></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<button>수정</button>
					<button type="button" onclick="deleteUser()">삭제</button>
					</td>
				</tr>
		</table>
	</fieldset>
	<input type="hidden" name="uiNo" value="<%=tNo %>">
	</form>
</div>
<script>
function deleteUser(){
	if(confirm("삭제하시겠습니까?")){
		location.href="<%=rPath%>/views/test/testDeleteOK.jsp?tNo=<%=tNo%>";
	}
}
 function checkVal(){
	 var objs =document.querySelectorAll('input')
	 for(var i=0; i<objs.length; i++){
		 if(objs[i].type!="number"){
			 if(objs[i].value.length<1 || objs[i].value.length>=100){
				 alert(objs[i].name+"값확인")
				 objs[i].focus();
				 return false;
			 }
		 }else{
			 if(objs[i].value<1){
				 alert(objs[i].name+"값확인");
				 objs[i].focus();
				 return false;
			 }
		 }
	 }
	 return true;
 }
</script>
</body>
</html>
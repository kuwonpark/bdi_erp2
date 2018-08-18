<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<%
String tId = request.getParameter("tId");
String tBrith = request.getParameter("tBrith");
String tContent =request.getParameter("tContent");
String tPwd= request.getParameter("tPwd");
String tNo =request.getParameter("tNo");
Connection con = DBConnection.getCon();
String sql = "update test set tId?,";
sql += " tPwd=?,";
sql += " tBirth=?,";
sql += " tContent=?,";
sql += " where tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,tId);
ps.setString(2,tBrith);
ps.setString(3,tContent);
ps.setString(4,tPwd);
ps.setString(5,tNo);

try{
int cnt = ps.executeUpdate();
DBConnection.close();
out.println("cnt : " + cnt);
if(cnt==1){
%>
<script>
	alert("유저수정이 정상적으로 이루어졌습니다.");
	location.href="<%=rPath%>/views/test/testList.jsp";
</script>
<%
}
}catch(SQLException e){
	out.println(e);
}
%>
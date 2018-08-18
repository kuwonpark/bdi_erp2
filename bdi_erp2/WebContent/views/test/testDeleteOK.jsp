<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<%
String tNo = request.getParameter("tNo");
Connection con = DBConnection.getCon();
String sql = "delete from test where tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, tNo);
int cnt = ps.executeUpdate();
DBConnection.close();
if(cnt==1){
%>
<script>
	alert("삭제완료");
	location.href="<%=rPath%>/views/test/testList.jsp";
</script>
<%
}
%>
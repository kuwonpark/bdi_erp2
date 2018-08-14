<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp" %>
<body>
<%
Map<String,String[]> params = request.getParameterMap();
Iterator<String> it = params.keySet().iterator();
while(it.hasNext()){
	String key = it.next();
	String[] values = params.get(key);
	out.print(key+ " : " );
	for(String value : values){
		out.print(value+" ");
	}
	out.print("<br>");
}
%>
</body>
</html>
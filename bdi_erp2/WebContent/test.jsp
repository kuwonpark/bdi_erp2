<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp" %>
<body>
<%
int age = 33;
Map<String,String[]> map = new HashMap<String,String[]>();
String[] strs = {"영화","음악"};
map.put("취미",strs);

strs = new String[2];
strs[0] = "아이폰x";
strs[1] = "겔럭시s9";
map.put("위시리스트", strs);

strs = new String[1];
strs[0] = "박규원";
map.put("이름",strs);

Iterator<String> it = map.keySet().iterator();
while(it.hasNext()){
	String key = it.next();
	System.out.print(key+":");
	String[] values = map.get(key);
	for(String value:values){
		System.out.print(value);
	}
	System.out.println();
}

%>
</body>
</html>
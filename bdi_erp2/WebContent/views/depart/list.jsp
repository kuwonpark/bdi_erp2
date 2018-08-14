<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.sun.java_cup.internal.runtime.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<body>
<%
String age = request.getParameter("age");
String name = request.getParameter("name");
String[] hobby = request.getParameterValues("hobby");
if(age!=null){
	String hobbystr = "";
	out.print( name+"님이 전송한 나이는 "+age+"살이네요 = ");
	for(int i=0; i<hobby.length; i++){
		hobbystr += hobby[i];
	}
	out.print("선택하신 취미는 "+hobbystr+"이고" );
	int age1 = Integer.parseInt(age);
	if(age1<10){
		out.print("유아입니다.");
	}else if(age1<20){
		out.print("미성년자입니다.");
	}else if(age1<30){
		out.print("성인입니다.");
	}else if(age1<40){
		out.print("30대입니다.");
	}else if(age1<50){
		out.print("40대입니다.");
	}else {
		out.print("노년입니다.");
	}
}
%>
<form>
	나이: <input type="text" name="age"><br>
	이름: <input type="text" name="name"><br>
	취미: 영화<input type="checkbox" name="hobby" value="영화">,
	음악감상<input type="checkbox" name="hobby" value="음악감상">,
	게임<input type="checkbox" name="hobby" value="게임">
	<br>
	<button>나이전송</button>
</form>
</body>
</html>
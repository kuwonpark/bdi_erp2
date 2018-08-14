<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>
<body>
	<form action="/params.jsp">
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		갖고싶은거 : 페라리 <input type="checkbox" name="wish" value="페라리">,
		건물 <input type="checkbox" name="wish" value="건물">,
	     아이폰X <input type="checkbox" name="wish" value="아이폰X"> <br>
		성별 : <select name="trans">
			<option value="남">남</option>
			<option value="여">여</option>
		</select> <br>
		<button>전송</button>
	</form>
</body>
</html>
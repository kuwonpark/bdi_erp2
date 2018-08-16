<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<body>
<div class="containor">
<table border="1">
	<tr>
		<th colspan="2">회원 가입</th>
	</tr>
	<tr>
		<th>아이디</th>
		<td><input type="text" name="uiId"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="uiPwd"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="uiName"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text"></td>
	</tr>
	<tr>
		<th>EMAIL</th>
		<td><input type="text"></td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
		<input type="radio" name="pp" value="man">남자
		<input type="radio" name="pp" value="woman">여자
		</td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td>
		<select>
			<%for(int i=1920; i<=2018; i++){%>
			<option value="<%=i%>"><%=i+"년"%></option>
			<%} %>
		</select>
		<select>
			<%for(int i=1; i<=12; i++){%>
			<option value="<%=i%>"><%=i+"월"%></option>
			<%} %>
		</select>
		<select>
			<%for(int i=1; i<=31; i++){%>
			<option value="<%=i%>"><%=i+"일"%></option>
			<%} %>
		</select>
		</td>
	</tr>		
</table>
</div>
</body>
</html>
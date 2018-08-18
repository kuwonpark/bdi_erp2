<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@include file="/views/common/common.jsp" %>
<body>
<div class="containor">
	<form action="<%=rPath%>/views/test/testInsertOK.jsp"  onsubmit="return checkVal()">
	<fieldset>
		<legend>test 등록</legend>
		<table class="table table-bordered">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="tId"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="tPwd"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="tBirth"></td>
				</tr>
				<tr>
					<th>소개</th>
				    <td><textarea name="tContent"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<button>전송</button>
					</td>
				</tr>
		</table>
	</fieldset>
	</form>
</div>
<script>
 function checkVal(){
	 
	 var objs =document.querySelectorAll('input')
	 for(var i=0; i<objs.length; i++){
		 if(objs[i].name!="tContent"){
			 if(objs[i].value.length<1 || objs[i].value.length>=100){
				 alert(objs[i].name+"값이 1이상이거나 100이하여야합니다.")
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
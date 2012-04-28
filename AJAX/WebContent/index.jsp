<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/prototype/1.7.0.0/prototype.js"></script>
<script type="text/javascript">
	function sum() {
		new Ajax.Request('sum.jsp', {
			method : 'post',
			parameters : {
				v1 : $("v1").value,
				v2 : $("v2").value
			},
			onSuccess : function(transport) {
				var response = transport.responseText || "error";
				$('wynik').value = response;
			},
			onFailure : function() {
				$('wynik').value = 'Something went wrong...';
			}
		});
	}
</script>
</head>
<body>
	<label for="v1">V1:</label>
	<input type="text" id="v1" name="v1" onkeyup="sum()"/>
	<br />
	<label for="v2">V2:</label>
	<input type="text" id="v2" name="v2" onkeyup="sum()" />
	<br />

	<label for="wynik">Wynik:</label>
	<input type="text" id="wynik" name="wynik" readonly="readonly" />
	<br />
</body>
</html>
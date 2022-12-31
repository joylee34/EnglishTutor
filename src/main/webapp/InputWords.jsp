<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Input Words</title>
</head>
<body>
	<form action='InputWords_proc.jsp'>
		<table>
			<tr>
				<th>Words/Phrases</th>
				<th>Definition</th>
			</tr>
			<tr>
				<td><textarea name='words' rows="200" cols="50">Place one word/phrase in each row</textarea></td>
				<td><textarea name='defs' rows="200" cols="150">Place the corresponding definition of each word in the same row</textarea></td>
			</tr>
		</table>
		<button type='submit'>commit</button>
	</form>
</body>
</html>
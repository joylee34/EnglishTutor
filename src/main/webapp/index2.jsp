<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>쇼핑몰 회원 등록</title>
<style type="text/css">
body {font-family:"굴림";}
h1 { text-align: center; font-weight: bold; }
table { width: fit-content; margin: 0 auto; border: 1px solid black;  border-collapse: separate;  }
td, th { border: 1px solid black; }
th { padding: 5px 2em; }
td { padding-right: 10em; }
th { font-weight: normal; }
#btn { padding: 5px; text-align: center; }
button { margin: 0 1em; }
</style>
</head>
<body>
<h1>쇼핑몰 회원 등록</h1>
<main>
<table>
	<tr>
		<th>회원번호(자동발생)</th>
		<td><input type='text' size="10" value='100007'></td>
	</tr>
	<tr>
		<th>회원성명</th>
		<td><input type='text' size="10" ></td>
	</tr>
	<tr>
		<th>회원전화</th>
		<td><input type='text' size='15'></td>
	</tr>
	<tr>
		<th>회원주소</th>
		<td><input type='text' size='30'></td>
	</tr>
	<tr>
		<th>가입일자</th>
		<td><input type='text' size="10" value='20220303'></td>
	</tr>
	<tr>
		<th>고객등급[A:VIP,B:일반,C:직원]</th>
		<td><input type='text' size="10"></td>
	</tr>
		<tr>
		<th>도시코드</th>
		<td><input type='text' size="10"></td>
	</tr>
	<tr>
		<td id='btn' colspan="2">
		<button>등록</button>
		<button>조회</button>
		</td>
	</tr>
</table>
</main>
</body>
</html>
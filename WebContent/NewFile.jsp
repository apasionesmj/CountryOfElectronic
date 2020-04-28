<%@ page import="javax.security.auth.message.callback.PrivateKeyCallback.Request, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<table class="table table-hover">
		<thead class="thead-light">
			<tr>
				<th>번호</th>
				<th>ID</th>
				<th>이름</th>
				<th>연락처</th>
				<th>생성일</th>
				<th>IP</th>
				<th>밴여부</th>
				<th>영구정지</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>165</td>
				<td>이제곧</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
			</tr>

			<tr>
				<td>170</td>
				<td>TFT</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
			</tr>

			<tr>
				<td>165</td>
				<td>이제곧</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
				<td>3</td>
			</tr>
		</tbody>
	</table>

	<nav aria-label="Page navigation">
	<ul class="pagination justify-content-center">
		<li class="page-item"><a class="page-link" href="#">이전 페이지</a></li>
		<li class="page-item"><a class="page-link" href="#">1</a></li>
		<li class="page-item"><a class="page-link" href="#">2</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#">다음 페이지</a></li>
	</ul>
	</nav>
	<footer>
	<div>
		<form class="form-inlie">
			<h3 class="text-secondary">
				전자나라 <a><img src="images/Country of Electronic blue.png"
					width="180" height="60" align="right"></a> <br>
				<h5 class="text-secondary">서울특별시 강남구</h5>
			</h3>
		</form>
	</div>
	</footer>
</body>
</html>
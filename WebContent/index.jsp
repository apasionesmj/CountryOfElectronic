<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Country of Electronic</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<div>
		<a href="index.jsp"> <img id="logo"
			src="images/Country of Electronic blue.png" width="300" height="90">
		</a>
	</div>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<div class="navbar-header">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="#">MARKET</a></li>
					<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
					<li class="nav-item"><a class="nav-link" href="#">신고게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#">글쓰기</a></li>
				</ul>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
					<!-- <div class="dropdown event-dropdown"> -->
					<li>
						<a href="#"	class="nav-link dropdown-toggle" data-toggle="dropdown">로그인 <span class="caret"></span></a>
								<ul class="dropdown-menu">
								<li><input type="text" placeholder="ID"></li>
								<li><input type="text" placeholder="Password"></li>
								<button type="submit" class="btn btn-dark">로그인</button>
							</ul>
							</li>
					<!-- </div> -->
				</ul>
			</div>
		</div>
	</nav>

	<div>
		<form class="form-inline" action="****.do" method="post">
			<h1>MARKET</h1>
			<div class="container"
				style="display: inline-block; text-align: right;">
				<select class="form-control pull-left" name="bd_sellbuy"
					id="bd_sellbuy">
					<option value="ALL">전체</option>
					<option value="SELL">팝니다</option>
					<option value="BUY">삽니다</option>
				</select> <input type="text" id="search_input" class="form-control pull-left"
					placeholder="검색어 입력" name="search" value="">
				<button type="submit" class="btn btn-dark">검색</button>
			</div>
		</form>
	</div>


	<table class="table table-hover">
		<thead class="thead-light">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>ID</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>165</td>
				<td>이제곧</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
			</tr>

			<tr>
				<td>170</td>
				<td>TFT</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
			</tr>

			<tr>
				<td>165</td>
				<td>이제곧</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>ㄷㄷㄷㅈ</td>
				<td>3</td>
			</tr>
		</tbody>
	</table>
	<hr />
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="loot" value="${pageContext.request.contextPath}" />
<!-- 유동 contextpath -->
<div>
	<a href="khome.do"><img id="logo"
		src="images/Country of Electronic blue.png" width="300" height="90"></a>
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="container-fluid">
		<div class="navbar-header">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">MARKET</a></li>
				<li class="nav-item"><a class="nav-link" onclick="location.href='favoriteshow.do'" href="#">공지사항</a></li>
				<li class="nav-item"><a class="nav-link" href="#">신고게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="#">글쓰기</a></li>
				<li class="nav-item"><a class="nav-link" href="#">유저목록</a></li>
				<li class="nav-item"><a class="nav-link" href="#">신고내역</a></li>
				<li class="nav-item"><a class="nav-link" href="#">공지등록</a></li>
				<li class="nav-item"><a class="nav-link" href="#">찜목록</a></li>
				<li class="nav-item"><a class="nav-link" href="#">내가쓴글</a></li>
				<li class="nav-item"><a class="nav-link" href="#">정보수정</a></li>
			</ul>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				<!-- <div class="dropdown event-dropdown"> -->
				<li><a href="#" class="nav-link dropdown-toggle"
					data-toggle="dropdown">로그인 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><input type="text" placeholder="ID"></li>
						<li><input type="text" placeholder="Password"></li>
						<button type="submit" class="btn btn-dark">로그인</button>
					</ul></li>
				<!-- </div> -->
			</ul>
		</div>
	</div>
</nav>
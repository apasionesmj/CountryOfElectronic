<%@ page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="loot" value="${pageContext.request.contextPath}" />
<!-- 유동 contextpath -->
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Country of Electronic</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	if(${deleteResult} == 1){
		alert("삭제되었습니다!");
	}
</script>
<script>
	function deleteCheck(){
		if(confirm("정말삭제하시겠습니까?") == true){
			location.href="deleteForm.do?bd_num=${board.bd_num}";	
		}else {
			return false;
		}
	}
</script>

</head>

<body>
	<tf:top_logo />
	<!-- 상단로고 & 내비바 -->

	<!-- 게시판 섹션(게시판 제목, 검색창, 내용)  -->
	<section>
	
		<c:if test="${tag_num == null}">		<!-- 게시판 표출 -->
			<tf:board_box />
		</c:if>
		
		
	</section>

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
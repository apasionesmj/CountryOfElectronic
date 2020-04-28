<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="loot" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="css/bootstrap.css">

<!-- 유동 contextpath -->

<div id="search">
	<form class="form-inline" action="searchPro.do?pageNum=${pageNum}"
		method="post">
		<h5>타이틀</h5>
		<div class="container" style="display: inline-block; text-align: right;">
		<select class="form-control pull left" name="bd_sellbuy"
					id="bd_sellbuy">
						<option value="ALL"
							<c:if test="${bd_sellbuy=='ALL' }">selected</c:if>>전체</option>
						<option value="SELL"
							<c:if test="${bd_sellbuy=='SELL' }">selected</c:if>>팝니다</option>
						<option value="BUY"
							<c:if test="${bd_sellbuy=='BUY' }">selected</c:if>>삽니다</option>
				</select>

				<td><input class="form-control pull left" id="search_input"
					type="text" name="search" value="${search }" placeholder="검색어 입력">
				</td>
				<td>
					<button class="btn btn-dark" id="search_btn" type="submit">
						검색</button>
				</td>

		</div>
	</form>
</div>


<div id="main_box">
	<table class="table table-hover">
		<thead class="thead-light">
			<tr>
				<th>번호</th>
				<th>말머리</th>
				<th>제 목</th>
				<th>ID</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<!-- DB 총 갯수가 하나라도 있으면... -->
		<c:if test="${totCnt>0 }">
			<!-- 10개이하의 항목을 가져왔을때 -->
			<c:forEach var="used_boardDto" items="${board_list }">


				<tr>
					<!-- 번호 출력 -->
					<td id="bd_num">${startNum }</td>
					<td id="bd_head"><c:choose>
							<c:when test="${used_boardDto.bd_sellbuy eq 'sell' }">팝니다</c:when>
							<c:otherwise>삽니다</c:otherwise>
						</c:choose></td>
					<td id="bd_title"><a
						href="gesiContent.do?bd_num=${used_boardDto.bd_num }">${used_boardDto.bd_title }</a></td>
					<td id="bd_rest">${used_boardDto.bd_ur_id }</td>
					<td id="bd_rest">${used_boardDto.bd_date }</td>
					<td id="bd_rest">${used_boardDto.bd_readCount }</td>
				</tr>


				<!-- 번호를 -1씩 줄인다 -->
				<c:set var="startNum" value="${startNum - 1 }" />
				<!-- 번호가 없으면 빈 칸으로 출력 -->
				<c:if test="${startNum==0 }">
					<c:forEach var="i" begin="1" end="${10-(totCnt%10) }">
					</c:forEach>
				</c:if>
			</c:forEach>
		</c:if>
		<!-- DB 총 갯수가 하나도 없으면... -->
		<c:if test="${totCnt==0 }">
			<tr>
				<td colspan="7">데이터가 없습니다.</td>
			</tr>
		</c:if>
	</table>

	<div class="main_footer">
		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center">
				<c:if test="${startPage > blockSize }">
					<li class="page-item"><a class="page-link"
						href="khome.do?pageNum=${startPage-blockSize}">이전 페이지</a></li>
				</c:if>

				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<li class="page-item"><a class="page-link"
						'khome.do?pageNum=${i}'>[ ${i } ]</a></li>
				</c:forEach>

				<c:if test="${endPage < pageCnt }">
					<li class="page-item"><a class="page-link"
						href='khome.do?pageNum=${startPage+blockSize}'>다음 페이지</a></li>
				</c:if>
			</ul>
		</nav>
	</div>

	<!-- page 나타나는 부분 END -->


</div>
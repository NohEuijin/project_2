<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script defer src="${pageContext.request.contextPath}/js/main.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<title>main</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<main class="main-outline"><!--main시작-->
        <div class="main-outline-container">
            <div class="main-outline-container-banner-container"><!--main-banner의 시작-->
	  <!-- <div class = "arrow prev">&lt;</div> -->
              <div class = "banner">
                    <div class ='img'>
                    	<a href="${pageContext.request.contextPath}/board/project/community.jsp" >
                        	<img src = "https://ifh.cc/g/ChphJd.jpg">
                        </a>
                    </div> 
                    <div class ="img">
                    	<a href="${pageContext.request.contextPath}/hmap/hmap.jsp" >
                        	<img src = "${pageContext.request.contextPath}/img/banner02.png">
                        </a>
                    </div>
                    <div class ="img">
                        <a href="${pageContext.request.contextPath}/board/project/community.jsp" >
                        	<img src = "${pageContext.request.contextPath}/img/banner03.png">
                        </a>
                    </div>
                
              </div>
              <!-- <div class="arrow next">&gt;</div> -->
            </div><!--banner 종료-->
        </div>
        <div class="main-outline-community-container">
			<div class="main-outline-community-container-section">
				<!-- 자유게시판 시작 -->
				<section class="main-outline-community-container-sec01">
					<div class="main-communitybox">
						<div class="main-communitybox-title">
							<a
								href="${pageContext.request.contextPath}/board/project/freeBoard.jsp"><h1>&nbsp;자유게시판</h1></a>
						</div>
						<div class="main-communitybox-contentbox">
							<div class="main-communitybox-titleline">
							<p class="ptage">제목</p>
							
							
							</div>
							<div class="main-communitybox-nickname">닉네임</div>
						</div>

						<!-- 자유게시판 끝 -->
						<!-- ========== 자유게시판게시글 목록 =========== -->
						<c:choose>
							<c:when test="${not empty indexFboardList}">
								<c:forEach var="indexfboard" items="${indexFboardList}" varStatus="loop">
									<c:if test="${loop.index < rowCount}">
										<div class="main-communitybox-contentbox">
											<div class="main-communitybox-titleline">
												<a href="${pageContext.request.contextPath}/board/views/fboardReadOk.fb?fboardNumber=${indexfboard.getFboardNumber()}">
												${indexfboard.getFboardTitle()}</a>
											</div>
											<div class="main-communitybox-nickname">${indexfboard.getUserNickname()}</div>
										</div>
									</c:if>
								</c:forEach>
							</c:when>

							<c:otherwise>
								<tr>
									<td colspan="5" align="center">등록된 게시물이 없습니다</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</div>
				</section>
				<!-- ========== 자유게시판게시글 목록 끝=========== -->
				<!-- 공지사항 시작 -->
				<section class="main-outline-community-container-sec02">
					<div class="main-communitybox">
						<div class="main-communitybox-title">
							<a
								href="${pageContext.request.contextPath}/board/project/notice.jsp"><h1>&nbsp;공지사항</h1></a>
						</div>
						<div class="main-communitybox-contentbox">
							<div class="main-communitybox-titleline">
								<p class="ptage">제목</p>
							</div>
							<div class="main-communitybox-nickname">관리자</div>
						</div>
				<!-- 공지사항 끝 -->
				<!-- ========== 공지사항 목록 =========== -->
				<c:choose>
					<c:when test="${not empty indexNoticeList}">
						<c:forEach var="indexnotice" items="${indexNoticeList}" varStatus="loop">
							<c:if test="${loop.index < rowCount}">
								<div class="main-communitybox-contentbox">
									<div class="main-communitybox-titleline">
										<a href="${pageContext.request.contextPath}/board/views/noticeReadOk.no?noticeNumber=${indexnotice.getNoticeNumber()}">
										${indexnotice.getNoticeTitle()}</a>
									</div>
									<div class="main-communitybox-nickname">${indexnotice.getUserNickname()}</div>
								</div>
							</c:if>
						</c:forEach>
					</c:when>

					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다</td>
						</tr>
					</c:otherwise>
				</c:choose>
				</div>
			</section>
			</div>
			<!-- ========== 자유게시판게시글 목록 끝=========== -->
		</div>
    </main><!--main종료-->
    

    

    <jsp:include page="footer.jsp"/>
    
    
<script>
$(document).ready(function() {
    // /project/indexFboardListOk.me로 리디렉션
    window.location.href = "${pageContext.request.contextPath}/project/indexFboardListOk.me";
});
</script>
</body>
</html>
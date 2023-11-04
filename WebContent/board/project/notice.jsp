<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice.css">
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title">최근글목록</div>
                </div>
                <div class="main-box1-content">
                    <div class="main-box1-content-button">
                        <a href="${pageContext.request.contextPath}/project/fboardListOk.fb">
                            <img class="img1" src="${pageContext.request.contextPath}/img/002.png" alt="">
                            <img class="img2" src="${pageContext.request.contextPath}/img/004.png" alt=""></a>
                    </div>
                    <div class="main-box1-content-button">
                        <a href="${pageContext.request.contextPath}/project/noticeListOk.no">
                            <img class="img1" src="${pageContext.request.contextPath}/img/001.png" alt="">
                            <img class="img2" src="${pageContext.request.contextPath}/img/005.png" alt=""></a>
                    </div>
                </div>
            </div>
            <form action="${pageContext.servletContext.contextPath}/project/noticeListOk.no" method="post">
            <div class="main-box2">
                <div class="main-box2-titlebox">
                    <div class="main-box2-title">
                    <a href="${pageContext.request.contextPath}/board/project/community.jsp">커뮤니티</a>
                    <div id="title2">&gt;</div><div id="title2">공지사항</div></div>
                </div>
                <div class="main-box2-content">
	                    <div class="main-box2-content-content1" id="content-category">
	                        <div class="main-box2-content-title1">글제목</div>
	                        <div class="main-box2-content-nickname1">닉네임</div>
	                        <div class="main-box2-content-date1">작성날짜</div>
	                        <div class="main-box2-content-count1">조회수</div>
	                    </div>
	           <!-- ========== 게시글 목록 =========== -->
                <c:choose>
	                <c:when test = "${not empty noticeList}">
						<c:forEach var="notice" items="${noticeList}">
						    <div class="main-box2-content-content">
						        <div class="main-box2-content-title"><a href="${pageContext.request.contextPath}/board/views/noticeReadOk.no?noticeNumber=${notice.getNoticeNumber()}">${notice.getNoticeTitle()}</a></div>
						        <div class="main-box2-content-nickname">${notice.getUserNickname()}</div>
						        <div class="main-box2-content-date">
   						        	<fmt:parseDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss.SSS" value="${notice.getNoticeDate()}"/>
									<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${dateFmt}"/>
									<c:out value="${dateTempParse}"/>
						        </div>
						        <div class="main-box2-content-count">${notice.getNoticeCount()}</div>
						    </div>
						</c:forEach>
	                </c:when>
	                
		         <c:otherwise>
	          		<tr>
	          			<td colspan = "5" align = "center" > 등록된 게시물이 없습니다 </td>
	          		</tr>
	          	</c:otherwise>
	         </c:choose>
	         <!-- ========== 게시글 목록 끝=========== -->
     
     
                </div>
            </div>
            <div class="main-box3">
            <!-- ========== 페이징처리 =========== -->
         
			<div class="main-box3-pagesbox">
			    <div class="main-box3-pages">
			        <ul class="notice-ul">
			            <c:if test="${startPage > 1}">
			                <li class="notice-li"><a href="?page=1&rowCount=${rowCount}" class="prev"></a></li>
			            </c:if>
			            <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
			                <c:choose>
			                    <c:when test="${page eq pageNum}">
			                        <li class="notice-li"><a href="?page=${pageNum}&rowCount=${rowCount}"><span>${pageNum}</span></a></li>
			                    </c:when>
			                    <c:otherwise>
			                        <li class="notice-li"><a href="?page=${pageNum}&rowCount=${rowCount}">${pageNum}</a></li>
			                    </c:otherwise>
			                </c:choose>
			            </c:forEach>
			            <c:if test="${next}">
			                <li class="notice-li"><a href="?page=${endPage + 1}&rowCount=${rowCount}" class="next"></a></li>
			            </c:if>
			        </ul>
			    </div>
			</div>

             <!-- ========== 페이징처리 끝=========== -->
                <div class="main-box3-searchpart">
                    <div class="main-box3-searchbox">
                        <select name="searchType">
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                        </select>
                        <input type="text" name="keyword">
                        <button>검색</button>
                    </div>
                </div>
            </div>
          </form>
             <div class="main-box4">
                <button><a id="writing-button" href="${pageContext.request.contextPath}/board/views/noticeWrite.no?userLevel=${user.getuserLevel()}">글쓰기</a></button>
            </div>
        </div>
    </main>
    <jsp:include page="../../footer.jsp"/>
</body>
</html>
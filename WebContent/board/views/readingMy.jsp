<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 글 보기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/readingMy.css">
    <script defer src="${pageContext.request.contextPath}/js/readingMy.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <%@include file="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title">
                        <div id="title1"><a href="${pageContext.request.contextPath}/project/fboardListOk.fb">커뮤니티</a></div>
                        <div id="title2">&gt;</div>
                        <div id="title2"><a href="${pageContext.request.contextPath}/project/fboardListOk.fb">자유게시판</a></div>
                    </div>
                </div>
                <div class="writing-title-box">
                    <div class="writing-title">${fboard.getFboardTitle()}</div>
                </div>
                <div class="main-box1-infobox">
                    <div class="writer">${fboard.getUserNickname()}</div>
                    <div class="date">${fboard.getFboardDate()}</div>
                </div>
                <div class="main-box1-contentbox">
                    <div class="main-box1-content">
                    ${fboard.getFboardContent()}
                    </div>
                </div>
            </div>
            <div class="main-box2">
                <div class="main-box2-list-button">
                    <button class="list-btn" id="listbutton1" type="button"  data-boardnumber="${fboard.getFboardNumber()}">목록</button>
                    <c:if test="${fboard.getUserNumber() == sessionScope.userNumber}">
                       <button id="listbutton2">
                           <a href="${pageContext.request.contextPath}/board/views/fboardUpdate.fb?fboardNumber=${fboard.getFboardNumber()}">수정</a></button>
                    	<button class="delete-btn" id="listbutton3" onclick="call_confirm1()">삭제</button>
                    </c:if>
                </div>
            </div>
<div class="main-box3">
                    <div class="total-comments-box">
                        <span class="comments-text">댓글</span>
                       <!--   <span class="total-comments-text"></span>-->
                    </div>
                    <c:choose>
            			<c:when test = "${not empty commentList}">
            				<c:forEach var="comment" items="${commentList}">
                    			<div class="comments-box">
                    				<div class="comments-info-box">
                        				<div class="name-n-date">
                            				<div class="writer-name"><c:out value="${comment.getUserNickname()}"/></div>
                            				<div class="written-date"><c:out value="${comment.getCommentDate()}"/></div>
                        				</div>
                        			<div class="comments-content-box">
                            			<div class="comments-content">
                                			<c:out value="${comment.getCommentContent()}"/>
                            			</div>
                        			</div>
			                    <!--<div class="comments-buttons">
			                            <button>수정</button>
			                            <button>삭제</button>
			                        </div> -->
                        			</div>
                    			</div>
                    		</c:forEach>
                    	</c:when>
                    </c:choose>	
                </div>
                <div class="write-commentsbox">
                    <div class="comment-writer">
                        <div class="comment-writer-box">
                            <div>
                            <input class="writer-nickname" readonly value="${userNickname}">
                            </div>
                        </div>
                    </div>
                    <div class="commentbox">
                        <form action="" class="writing-comment">
                           <textarea class="writing-comment-box" name="" id="commentbox" placeholder="내용을 입력해 주세요."></textarea>
                            <div class="comment-button-box">
                                <div class="comment-savebutton">
                                    <button><a id="commentbutton" href="${pageContext.request.contextPath}/board/views/fboardReadOk.fb?fboardNumber=${fboard.getFboardNumber()}"">댓글등록</a></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@include file="../../footer.jsp" %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>작성된 글 보기(자유)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/readingFB.css">
    <script defer src="../../js/readingFB.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title"><div id="title1"><a href="./community.jsp">커뮤니티</a></div><div id="title2">&gt;</div><div id="title2"><a href="./freeBoard.jsp">자유게시판</a></div></div>
                </div>
                <div class="writing-title-box">
                    <div class="writing-title">글제목</div>
                </div>
                <div class="main-box1-infobox">
                    <div class="writer">작성자</div>
                    <div class="date">2023-08-18</div>
                </div>
                <div class="main-box1-contentbox">
                    <div class="main-box1-content">
	                   <textarea readonly>
	                   글내용
	                   </textarea>
                    </div>
                </div>
            </div> 
            <div class="main-box2">
                <div class="main-box2-buttons">
                    <button id="listbutton"><a id="listbutton" href="./freeBoard.jsp">목록</a></button>
                    <button id="notifybutton"><a id="notifybutton" onclick="call_confirm()">신고하기</a></button>
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
                            <div class="comment-writer-text">닉네임</div>
                            <div class="comment-writer-name">작성자</div>
                        </div>
                    </div>
                    <div class="commentbox">
                        <form action="" class="writing-comment">
                            <textarea class="writing-comment-box" name="" id=""></textarea>
                            <div class="comment-button-box">
                                <div class="comment-savebutton">
                                    <button><a id="commentbutton" href="./readingFB.jsp">댓글등록</a></button>
                                </div>
                            </div>
                        </form>
                    </div>
                   
                </div>
            </div>   
        </div>
    </main>
    <%@include file ="../../footer.jsp" %>
</body>
</html>
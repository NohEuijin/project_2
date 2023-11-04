<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(관리자)공지사항 글 수정</title>
    <link rel="stylesheet" href="../../css/adminRewriting.css">
    <script defer src="../../js/adminRewriting.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1-titlebox">
                <div class="main-box1-title"><div id="title1"><a href="../pro/community.jsp">커뮤니티</a></div><div id="title2">&gt;</div><div id="title2"><a href="../pro/notice.jsp">공지사항</a></div></div>
            </div>
            <div class="content-container">
                <form class="content-form" action="${pageContext.request.contextPath}/board/views/noticeUpdateOk.no" method="post">
                <!-- 폼안에 히든으로 번호 넣기 -->
					<input type="hidden" name="noticeNumber" value="${notice.getNoticeNumber()}">
									
                    <label for="title" class="content-title">제목
                    	<input type="text" id="title" name="noticeTitle" value="${notice.getNoticeTitle()}" required />
                    </label>
                    <div class="writer" for="author" class="content-nickname">닉네임 
                    	<input class="writer-nickname" value="${notice.getUserNickname()}" readonly>
                    </div>
                    <!-- 작성자 서버 연결시 로그인한 회원 아이디로 수정하기 -->

					
                                       <!-- 줄바꾸면 안됨!!?? -->
                    <div class="content-content">내용 <textarea name="noticeContent" required id="writing-area"><c:out value="${notice.getNoticeContent()}"/></textarea></div>
                    <div class="addfiles">
                        <div class="addfiles1">
                        <!-- 
                        <form action="">
                            <input type="file">
                        </form>
                         -->
                        </div>
                    </div>
	                    <div class="buttons">
	                    <button id="button1" onclick="call_confirm1()">
	                    	<a id="button1" href="${pageContext.request.contextPath}/project/noticeListOk.no">취소</a>
	                    </button>
	                    <button class="button2" type="submit">수정</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <%@include file ="../../footer.jsp" %>
</body>
</html>
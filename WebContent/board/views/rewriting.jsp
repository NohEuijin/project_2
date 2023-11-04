<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 수정</title>
    <link rel="stylesheet" href="../../css/rewriting.css">
    <script defer src="../../js/rewriting.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1-titlebox">
                <div class="main-box1-title">
                <div id="title1"><a href="${pageContext.request.contextPath}/project/fboardListOk.fb">커뮤니티</a></div>
                <div id="title2">&gt;</div>
                <div id="title2"><a href="${pageContext.request.contextPath}/project/fboardListOk.fb">자유게시판</a>
                </div>
                </div>
            </div>
            <div class="content-container">
                <form id="write-form" action="${pageContext.request.contextPath}/board/views/fboardUpdateOk.fb" method="post">
                	<!-- 폼안에 히든으로 번호 넣기 -->
					<input type="hidden" name="fboardNumber" value="${fboard.getFboardNumber()}">
                
                    <label for="title" class="content-title">제목
                    	<input type="text" id="title" name="fboardTitle" value="${fboard.getFboardTitle()}" required />
                    </label>
                    <div class="writer" for="author" class="content-nickname">닉네임 
                    	<input class="writer-nickname" value="${fboard.getUserNickname()}" readonly>
                    </div>
                    <!-- 작성자 서버 연결시 로그인한 회원 아이디로 수정하기 -->

					
                                       <!-- 줄바꾸면 안됨!!?? -->
                    <div class="content-content">내용 <textarea name="fboardContent" required id="writing-area"><c:out value="${fboard.getFboardContent()}"/></textarea></div>
                     
                    <div class="addfile">
                        <div class="addfile-text">
                             <!--<div class="addfile-text1">첨부파일</div>
                            <div class="addfile-text2">'png','gif','jpg','jpeg'파일만 업로드가 가능합니다.</div>-->
                        </div>
                    </div>
                    <div class="addfiles">
                        <div class="addfiles1">
                        <!--
                        <form action="">
                            <input type="file">
                        </form>-->
                        </div> 
                    </div>
                    <div class="buttons">
                        <button id="button1" onclick="call_confirm1()">
                            <a id="button1" href="${pageContext.request.contextPath}/project/fboardListOk.fb">취소</a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글 작성</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/writing.css">
    <script defer src="${pageContext.request.contextPath}/js/writing.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1-titlebox">
                <div class="main-box1-title">
                    <div id="title1"><a href="./community.jsp">커뮤니티</a></div>
                    <div id="title2">&gt;</div>
                    <div id="title2"><a href="./freeBoard.jsp">자유게시판</a></div>
                </div>
            </div>
            <div class="content-container">
                <form class="content-form" 
                 id="fboardinsert" action="${pageContext.request.contextPath}/board/views/fboardWriteOk.fb" method="post">
                    <div class="content-title">제목
                    	<input type="text" name="fboardTitle">
                    </div>
                    <div class="content-nickname">닉네임
                    	<input class="writer-nickname" readonly value="${userNickname}">
                    </div>
                    <div class="content-content">내용<textarea name="fboardContent" id="writing-area"></textarea>
                    </div>
                    <div class="addfile">
                        <div class="addfile-text">
                        <!--    <div class="addfile-text1">첨부파일</div>
                            <div class="addfile-text2">'png', 'gif', 'jpg', 'jpeg' 파일만 업로드 가능합니다.</div>
                        </div>
                    </div>
                    <div class="addfiles">
                        <div class="addfiles1">
                            <input type="file" id="file" name="boardFile" accept=".jpg, .jpeg, .png" multiple />
                        </div>
                    </div>-->  
                    <!-- 취소 버튼 -->
                    <div class="buttons">
                    <button id="button1" onclick="call_confirm1()">
                    <a id="button1" href="${pageContext.request.contextPath}/board/project/freeBoard.jsp">취소</a>
                    </button>
                    <!-- 등록 버튼 -->
                    <button id="button2" class="button2" onclick="call_confirm2()">
                    등록
                    </button>
                    </div>
                </form>
            </div>
        </div>
    </main>
    <%@include file ="../../footer.jsp" %>
</body>
</html>

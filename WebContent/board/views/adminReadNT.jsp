<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>(관리자)공지사항 내 글 보기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminReadNT.css">
    <script defer src="${pageContext.request.contextPath}/js/adminReadNT.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title"><div id="title1"><a href="${pageContext.request.contextPath}/project/noticeListOk.no">커뮤니티</a></div><div id="title2">&gt;</div><div id="title2"><a href="${pageContext.request.contextPath}/project/noticeListOk.no">공지사항</a></div></div>
                </div>
                <div class="writing-title-box">
                    <div class="writing-title">${notice.getNoticeTitle()}</div>
                </div>
                <div class="main-box1-infobox">
                    <div class="writer">${notice.getUserNickname()}</div>
                    <div class="date">${notice.getNoticeDate()}</div>
                </div>
                <div class="main-box1-contentbox">
                    <div class="main-box1-content">${notice.getNoticeContent()}</div>
                </div>
            </div> 
            <div class="main-box2">
                <div class="main-box2-list-button">
                    <button class="list-btn" id="listbutton1" type="button"  data-boardnumber="${notice.getNoticeNumber()}">목록</button>
                    <c:if test="${notice.getUserNumber() == sessionScope.userNumber}">
                       <button id="listbutton2">
                           <a href="${pageContext.request.contextPath}/board/views/noticeUpdate.no?noticeNumber=${notice.getNoticeNumber()}">수정</a></button>
                       <button class="delete-btn" id="listbutton3" onclick="call_confirm1()">글삭제</button>
                    </c:if>
                </div>
            </div>
    </main>
    <%@include file ="../../footer.jsp" %>
</body>
</html>
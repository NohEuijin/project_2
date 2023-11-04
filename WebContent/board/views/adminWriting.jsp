<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>(관리자)공지사항 글 작성</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/css/adminWriting.css">
<script defer
   src="${pageContext.request.contextPath}/js/adminWriting.js"></script>
</head>
<body>
    <%@include file ="../../header.jsp" %>
   <main>
      <div class="main-container">
         <div class="main-box1-titlebox">
            <div class="main-box1-title">
               <div id="title1">
                  <a href="../pro/community.jsp">커뮤니티</a>
               </div>
               <div id="title2">&gt;</div>
               <div id="title2">
                  <a href="../pro/notice.jsp">공지사항</a>
               </div>
            </div>
         </div>
         <div class="content-container">
            <form class="content-form" id="noticeinsert"
               action="${pageContext.request.contextPath}/board/views/noticeWriteOk.no"
               method="post">
               <div class="content-title">
                  제목 <input type="text" name="noticeTitle">
               </div>
               <div class="content-nickname">
                  닉네임 <input class="writer-nickname" readonly
                     value="${userNickname}">
               </div>
               <div class="content-content">
                  내용
                  <textarea name="noticeContent" id="writing-area"></textarea>
               </div>
               <div class="addfile">
                  <div class="addfile-text">
                   <!--   <div class="addfile-text1">첨부파일</div>
                     <div class="addfile-text2">'png','gif','jpg','jpeg'파일만 업로드가
                        가능합니다.</div>
                  </div>
               </div>
               <div class="addfiles">
                  <div class="addfiles1">
                     <form action="">
                        <input type="file">
                     </form>
                  </div>
               </div>--> 
               <!-- 취소 버튼 -->
               <div class="buttons">
                  <button id="button1" onclick="call_confirm1()">
                     <a id="button1"
                        href="${pageContext.request.contextPath}/board/project/notice.jsp">취소</a>
                  </button>
                  <!-- 등록 버튼 -->
                  <button id="button2" class="button2" onclick="call_confirm2(event)">
                  등록
                     <%-- <a id="button2" href="${pageContext.request.contextPath}/board/views/noticeWriteOk.no">등록</a> --%>
                  </button>
            </form>
         </div>
      </div>
   </main>
   <%@include file="../../footer.jsp"%>
</body>
</html>
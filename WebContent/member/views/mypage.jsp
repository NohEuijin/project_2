<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/mypage.css">
<script defer src ="../../js/mypage.js"></script>
<title>MYPAGE</title>
</head>
<body>
<jsp:include page="../../header.jsp"/>
<main>
        <div class="main-container-outline"><!--메인 시작-->
            <div class="main-container">
                <div class="main-container-up">
                    <h1>회원정보 수정</h1>
                </div>
                <form action="${pageContext.request.contextPath}/member/views/userUpdateOk.me" method="post" name="update">
                <div class="main-container-down">
                    <div class="main-container-down-section01">
                        <div class="main-container-down-section01-box">
                            <!--  <button type="button"  onclick="call_confirm()" class="main-container-down-section01-box-button">회원탈퇴</button>-->
                            <a class="diva" href="${pageContext.request.contextPath}/member/views/userDeleteOk.me">회원탈퇴</a>
                        </div>
                    </div>
                    <div class="main-container-down-section02">
                        <div class="main-container-down-section02-box1">
                            <strong>이메일</strong>
                        </div>
                        
                        <label>
                            <input type="email" name="userEmail" 
                            class="main-container-down-section02-box2" value="${sessionScope.userEmail}" readonly> 
                        </label>
						
                    </div>
                    <div class="main-container-down-section03">
                        <div class="main-container-down-section03-box1">
                            <strong>닉네임</strong>
                        </div>
                        <div class="main-l1-d1">
                            다른 유저와 겹치지 않도록 입력해주세요. (2~15자)
                        </div>
                        <label>
                            <input type="text" name="userNickname" placeholder="닉네임" 
                            class="main-container-down-section03-box2" value="${userNickname}">
                            
                        </label>
                    </div>
                    <div class="main-container-down-section04">
                        <div class="main-container-down-section04-box1">
                            <strong>비밀번호</strong>
                        </div>
                        <div class="main-l1-d1">
                            영문, 숫자를 포함한 8~12자리의 비밀번호를 입력해주세요.
                        </div>
                        <label>
                            <input type="password" name="userPassword" placeholder="비밀번호" 
                            value="${userPassword}" class="main-container-down-section04-box2">
                        </label>
                    </div>
                    <div class="main-container-down-section05">
                        <div class="main-container-down-section05-box1">
                            <strong>비밀번호 확인</strong>
                        </div>
                        <div class="main-l1-d1">
                            비밀번호를 한 번 더 입력해 주세요.
                        </div>
                        <label>
                            <input type="password" name="userPassword" placeholder="비밀번호 확인" 
                            class="main-container-down-section05-box2">
                        </label>
                    </div>
                    <div class="main-container-down-section07">

                    </div>
                    <div class="main-container-down-section06">
                        <button class="main-container-down-section06-button"  type="submit">
                            수  정
                        </button>
                        <button class="main-container-down-section06-button"  type="button">
                            취  소
                        </button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </main>
<jsp:include page="../../footer.jsp"/>
</body>
</html>
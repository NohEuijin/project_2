<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
<title>header</title>
</head>
<body>
    <header>
        <div class="header-container">
            <div class="header-box1">
                <div class="logo">
                    <a href="${pageContext.request.contextPath}/project/indexFboardListOk.me">
                        <img src="https://ifh.cc/g/WZSvkh.png" alt="팀 로고">
                    </a>
                </div>
                <div class="header-nav">
                    <ul class="header-nav">
                        <li>
                            <a href="${pageContext.request.contextPath}/hmap/hmap.jsp">우리동네 헬스장</a>
                        </li>
                        <li>

                            <a href="${pageContext.request.contextPath}/board/project/community.jsp">커뮤니티</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="header-box2">
                <ul class="header-box2">
                    
                        <c:if test="${sessionScope.userNumber != null}">
                        <li>	
                         	
                    	<c:if test="${sessionScope.userNumber != 0}">
	                        <a id="nickname" href="${pageContext.request.contextPath}/member/views/mypage.me">
	                        	<c:out value="${sessionScope.userNickname}"/> 님
	                        </a>
                        </c:if>
                        
                       	<c:if test="${sessionScope.userNumber == 0}">
	                        <a id="nickname" href="${pageContext.request.contextPath}/project/admin.me">
	                        	<c:out value="${sessionScope.userNickname}"/> 님
	                        </a>
                        </c:if>
                        
	                        <a href="${pageContext.request.contextPath}/project/logoutOk.me">로그아웃</a>
	                        </li>
                        </c:if>
                    	<li>
                    	<c:if test="${sessionScope.userNumber == null}">
                    		<a href="${pageContext.request.contextPath}/member/project/login.jsp">로그인</a>
	                        <a href="${pageContext.request.contextPath}/member/project/join.jsp">회원가입</a>
                        </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </header>
     
</body>
</html>
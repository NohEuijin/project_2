<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오운완_관리자</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <script defer src ="${pageContext.request.contextPath}/js/admin.js"></script>
</head>
<body>
	
	<jsp:include page="../../header.jsp"/>

    <main>
        <div class="main-container">

                <div class="main-box1-titlebox">
                    <div class="main-box1-title"> 관리자 &gt; 회원 관리 &nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <a href="${pageContext.request.contextPath}/project/adminb.me"><span class="span-da">게시글 관리</span></a>
                </div>
                
                
                <form action="${pageContext.servletContext.contextPath}/project/admin.me" method="post">
                <div class="main-box1-content">
                  <div class="main-box3-searchbox">
                       <div>
                        <span>
                         ⊙ 검 색 어 :
                        </span>
                       </div>
                      <select name="searchType">
                          <option value="email">이메일</option>
                          <option value="nickname">닉네임</option>
                      </select>
                      <input type="text" name="keyword">
                      <button>검 색</button>
                  </div>
                </div>

                <!-- 회원 정보 창 시작-->
                <div class="main-box1-1">
                
                    <div class="main-box2-title">
                        <div class="main-box2-content-content">
                            <div class="main-box2-content-title">회원번호</div>
                            <div class="main-box2-content-email">이메일</div>
                            <div class="main-box2-content-nickname">닉네임</div>
                            <div class="main-box2-content-date">가입일</div>
                            <div class="main-box2-content-management">관리</div>
                        </div>
                    </div>

	           <!-- ========== 회원 정보 목록 =========== -->
                    <c:choose>
                        <c:when test = "${not empty userList}">
                            <c:forEach var="user" items="${userList}">
                                <div class="main-box2-content-content">
                                    <div class="main-box2-content-title">${user.getUserNumber()}</div>
                                    <div class="main-box2-content-email">${user.getUserEmail()}</div>
                                    <div class="main-box2-content-nickname">${user.getUserNickname()}</div>
                                    <div class="main-box2-content-date">
                                    <fmt:parseDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss.SSS" value="${user.getUserDate()}"/>
									<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${dateFmt}"/>
									<c:out value="${dateTempParse}"/>
                                    </div>
		                            <div class="main-box2-content-management">
										<button type="button" class="management_b" onclick="call_confirm('${pageContext.request.contextPath}/member/views/adminUserDeleteOk.me?userNumber=${user.getUserNumber()}')">
										    회원탈퇴
										</button>
		                            	<!-- 
		                            	<button onclick="location.href='${pageContext.request.contextPath}/member/views/adminUserDeleteOk.me?userNumber=${user.getUserNumber()}'" class="management_b" >
		                            	 회원탈퇴
		                            	 </button>
		                            	<a href="${pageContext.request.contextPath}/member/views/adminUserDeleteOk.me?userNumber=${user.getUserNumber()}">회원탈퇴</a>-->
		                            </div>
                                </div>
                            </c:forEach>
                        </c:when>
                            
                        <c:otherwise>
                            <tr>
                                <td colspan = "5" align = "center" > &nbsp;&nbsp;&nbsp;&nbsp;등록된 게시물이 없습니다 </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
	         <!-- ========== 회원 정보 목록 종료=========== -->
                </div>

            <div class="main-box3">
            <!-- ========== 페이징처리 =========== -->
         
			<div class="main-box3-pagesbox">
			    <div class="main-box3-pages">
			        <ul class="admin-ul">
			            <c:if test="${startPage > 1}">
			                <li class="admin-li"><a href="?page=1&rowCount=${rowCount}" class="prev"></a></li>
			            </c:if>
			            <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
			                <c:choose>
			                    <c:when test="${page eq pageNum}">
			                        <li class="admin-li"><a href="?page=${pageNum}&rowCount=${rowCount}"><span>${pageNum}</span></a></li>
			                    </c:when>
			                    <c:otherwise>
			                        <li class="admin-li"><a href="?page=${pageNum}&rowCount=${rowCount}">${pageNum}</a></li>
			                    </c:otherwise>
			                </c:choose>
			            </c:forEach>
			            <c:if test="${next}">
			                <li class="admin-li"><a href="?page=${endPage + 1}&rowCount=${rowCount}" class="next"></a></li>
			            </c:if>
			        </ul>
			    </div>
			</div>
           <!-- ========== 페이징처리 끝=========== -->
         </div>
      </form>
    </div>
</main>
    
	<jsp:include page="../../footer.jsp"/>
</body>
</html>
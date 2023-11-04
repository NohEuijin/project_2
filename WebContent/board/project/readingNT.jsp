<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>작성된 글 보기(공지)</title>
    <link rel="stylesheet" href="../../css/readingNT.css">
</head>
<body>
    <%@include file ="../../header.jsp" %>
    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title">
                    <div id="title1"><a href="${pageContext.request.contextPath}/project/noticeListOk.no">커뮤니티</a></div>
                    <div id="title2">&gt;</div>
                    <div id="title2"><a href="${pageContext.request.contextPath}/project/noticeListOk.no">공지사항</a></div></div>
                </div>
                <div class="writing-title-box">
                    <div class="writing-title">글제목</div>
                </div>
                <div class="main-box1-infobox">
                    <div class="writer">작성자</div>
                    <div class="date">2023-08-18</div>
                </div>
                <div class="main-box1-contentbox">
                    <div class="main-box1-content">글내용</div>
                </div>
            </div> 
            <div class="main-box2">
                <div class="main-box2-list-button">
                    <button><a id="listbutton" href="./notice.jsp">목록</a></button>
                </div>
            </div>
            <!-- <div class="main-box3">
                    <!-- <div class="total-comments-box">
                        <span class="comments-text">댓글</span>
                        <span class="total-comments-text">1</span>
                    </div>
                    <div class="comments-box">
                    <div class="comments-info-box">
                        <div class="name-n-date">
                            <div class="writer-name">작성자</div>
                            <div class="written-date">2023-08-18 15:30:13</div>
                        </div>
                        <div class="comments-content-box">
                            <div class="comments-content">
                                댓글내용
                            </div>
                        </div> -->
                        <!-- <div class="comments-buttons">
                            <button>수정</button>
                            <button>삭제</button>
                        </div> -->
                    <!-- </div> -->
                <!-- </div> --> 
                <!-- <div class="write-commentsbox">
                    <div class="comment-writer">
                        <div class="comment-writer-box">
                            <div class="comment-writer-text">닉네임</div>
                            <div class="comment-writer-name">작성자</div>
                        </div>
                    </div>
                    <div class="commentbox">
                        <form action="" class="writing-comment">
                            <textarea class="writing-comment-box" name="" id=""=></textarea>
                            <div class="comment-button-box">
                                <div class="comment-savebutton">
                                    <button><a id="commentbutton" href="#">댓글등록</a></button>
                                </div>
                            </div>
                        </form>
                    </div>
                   
                </div> -->
            </div>   
        </div>
    </main>
    <%@include file ="../../footer.jsp" %>
</body>
</html>
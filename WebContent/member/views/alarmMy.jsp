<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>alarmMy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/alarmMy.css">
    <script defer src ="${pageContext.request.contextPath}/js/alarmMy.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

</head>
<body>

	<jsp:include page="../../header.jsp"/>

    <main>
        <div class="main-container">
            <div class="main-box1">
                <div class="main-box1-titlebox">
                    <div class="main-box1-title">알림
                    <img src="${pageContext.request.contextPath}/img/bell.png" alt="" class="box1-title-img">
                    </div>
                    
                </div>

                <div class="main-box1-content">
                신고받은 목록 입니다. 확인 하시고 주의 해주세요!
                </div>

            </div>
            
                <div class="main-box2-titlebox">
                    <div class="main-box2-title">최근 알림 목록 


                    </div>


                    <button class="pagesbox-b" onclick="call_confirm()" >삭제</button>
                </div>
                <div class="main-box2-content">
                    <div class="main-box2-content-content" id="content-category">
                      <div class="main-box2-content-count">
                        <input type="checkbox" class="all">
                      </div>
                        <div class="main-box2-content-title1">글제목</div>
                        <div class="main-box2-content-nickname">닉네임</div>
                        <div class="main-box2-content-date">작성날짜</div>
                    </div>

                   
                    <div class="main-box2-content-content">
                      <div class="main-box2-content-count">
                        <input type="checkbox" class="term">
                      </div>
                        <div class="main-box2-content-title">                          
                          헬린이 여자 근유통이 빡센데 원래 이런가요
                        </div>
                        <div class="main-box2-content-nickname">관리자</div>
                        <div class="main-box2-content-date">2023-08-22</div>

                    </div>
                    <div class="main-box2-content-content">
                      <div class="main-box2-content-count">
                        <input type="checkbox" class="term">
                      </div>
                        <div class="main-box2-content-title">
                          
                            헬린이 여자 근유통이 빡센데 원래 이런가요
                         

                        </div>
                        <div class="main-box2-content-nickname">관리자</div>
                        <div class="main-box2-content-date">2023-08-22</div>

                    </div>
                    <div class="main-box2-content-content">
                      <div class="main-box2-content-count">
                        <input type="checkbox" class="term">
                      </div>
                        <div class="main-box2-content-title">
                          헬린이 여자 근유통이 빡센데 원래 이런가요
                        </div>
                        <div class="main-box2-content-nickname">관리자</div>
                        <div class="main-box2-content-date">2023-08-22</div>

                    </div>

            
            <div class="main-box3">
                <div class="main-box3-pagesbox">
                    <div class="main-box3-pages">
                        <span><a href="#">&lt; 이전</a></span>
                        <span><a href="#">1</a></span>
                        <span><a href="#">2</a></span>
                        <span><a href="#">3</a></span>
                        <span><a href="#">다음 &gt;</a></span>
                    </div>
                </div>
                <div class="main-box3-searchpart">

                </div>
            </div>
            <!-- <div class="main-box4">
                <button><a id="writing-button" href="./">글쓰기</a></button>
            </div> -->
        </div>
    </main>
    
    <jsp:include page="../../footer.jsp"/>
    
    
</body>
</html>
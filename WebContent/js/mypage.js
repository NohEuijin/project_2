function call_confirm(){

	if(confirm("정.말.로 탈퇴하시겠습니까?")){
        alert("탈퇴되었습니다 :(");
        window.location.href= "${pageContext.request.contextPath}/member/views/userDeleteOk.me";
	}else{
		
	}
}
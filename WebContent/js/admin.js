function call_confirm(redirectURL) {
    if (confirm("정말로 탈퇴 처리 하시겠습니까?")) {
        alert("탈퇴 되었습니다!");
        location.href = redirectURL;
    } else {
        // 사용자가 취소를 선택한 경우의 처리
    }
}

## 팀명 & 프로젝트 이름 : 오운완💪 ( OWW / OWW-Project )

### 📚프로젝트 주제 

- 요즘 사람들은 **건강**에 관심이 많습니다.
- 건강 하면 운동이 가장 먼저 떠오르며, 운동중에서도 **헬스**가 가장 보편적입니다.
- 헬스는 사람들이 가장 많이 하는 운동 중의 하나이긴 하지만, 보편성에 비해 **운동기구**를 **사용**하는 **방법**이나,
  **부위**별 **운동 방법**들을 **정확**하고 **구체**적으로 **아는 사람들은 많지 않습니다.**
- 그렇기 때문에 **운동기구 사용방법, 부위별 운동 방법**, 이외에 **식단 공유**와 집 근처 **헬스장 검색** 등 
- 헬스 관련 정보를 **공유**할 수 있는 **커뮤니티 서비스**가 존재하면 좋겠다는 생각을 했습니다.

## 📖목차
  - [팀 구성](#팀-구성)
  - [ERD구성](#erd구성)
  - [Skill](#skill)
  - [담당 작업](#담당-작업)
    - [메인페이지 WIKI로 이동](#메인페이지--wiki로-이동)
    - [상담사등록 WIKI로 이동](#상담사-등록-wiki로-이동)
    - [상담사 프로필(목록) WIKI로 이동](#상담사-프로필목록-wiki로-이동)
    - [상담사 프로필(상세보기) WIKI로 이동](#상담사-프로필목록-wiki로-이동)
    - [상담 예약 회원 관리 WIKI로 이동](#상담예약-회원관리-wiki로-이동)
    - [제휴등록 WIKI로 이동](#제휴등록-wiki로-이동)

## 🔗팀 구성
**Producer Git-hut Page 노의진**

|팀장|노의진|           
|:--:|:--:|
|부팀장|이지윤| 
|팀원|이동현| 
|팀원|유대훈| 

## 💡ERD구성

<details open>
<summary>ERD</summary>
  
  <a href='https://ifh.cc/v-H9Fj40' target='_blank'><img src='https://github.com/NohEuijin/project_2/assets/141835418/fd20a5be-8e62-425c-a6c4-0fc4f949dffb' border='0'></a>

</details>

 ## 🗡Skill
- **HTML, CSS, JavaScript**
- **JAVA, JSP**
- **Ajax, MyBatis, thymeleaf**
### DB
- **MySQL**

## 🏷담당 작업

### 🥩메인페이지 <a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EB%A9%94%EC%9D%B8%ED%8E%98%EC%9D%B4%EC%A7%80"> WIKI로 이동</a>
- 로그인시 세션 유지되고 000 님 으로 닉네임 표시
- UserNumber 0 = 관리자 / 이외 회원으로 설정
- UserNumber 0 = "관리자 님" 이름 클릭 시 관리자 페이지 이동
- 이외 회원 = "000 님" 이름 클릭 시 마이 페이지 이동
- 자유게시판, 공지사항의 최신글을 불러와 메인에 업데이트
- 최신글 클릭시 해당 상세글로 페이지 이동
<a href="https://github.com/NohEuijin/project_2/assets/141835418/74b5928b-111d-4b35-a06d-1b7d2c090a72"> 
 <img src="https://github.com/NohEuijin/project_2/assets/141835418/74b5928b-111d-4b35-a06d-1b7d2c090a72?type=w580" width="500">
</a>

### 🥩관리자(회원관리,게시글관리)<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%82%AC%EB%93%B1%EB%A1%9D"> WIKI로 이동</a>
- 상담사는 유료상담사, 무료상담사로 구분
- 상담사 회원은 결제를 완료하면 유료 상담사로 활동이 가능
- 유료 상담사는 등록 페이지에서 비용을 입력 가능한 칸이 나타남
- 상담사의 프로필 이미지를 첨부파일로 등록이 가능

<a href="https://github.com/NohEuijin/project_2/assets/141835418/a5c84adb-8774-4a2b-8672-34c67c40d6f0"> 
<img src="https://github.com/NohEuijin/project_2/assets/141835418/42d14d68-851e-4cbf-afbc-b4bb9c8ffb1c?type=w580" width="500">
<img src="https://github.com/NohEuijin/project_2/assets/141835418/a5c84adb-8774-4a2b-8672-34c67c40d6f0" width="500">
</a>

### 🥩상담사 프로필(목록)<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%82%AC%ED%94%84%EB%A1%9C%ED%95%84(%EB%AA%A9%EB%A1%9D%EB%B3%B4%EA%B8%B0)#%EA%B8%B0%EB%8A%A5%EC%86%8C%EA%B0%9C"> WIKI로 이동</a>
- 비용을 기준으로 찾아와 보여줌.

<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%82%AC%ED%94%84%EB%A1%9C%ED%95%84(%EB%AA%A9%EB%A1%9D%EB%B3%B4%EA%B8%B0)#%EA%B8%B0%EB%8A%A5%EC%86%8C%EA%B0%9C"> 
 <img src="https://github.com/2teamSpring/RedMedicine/assets/141835418/8da2cb24-0160-4239-b2b9-2022da9132ad?type=w580" width="500">
</a>

### 🥩상담사 프로필(상세보기)<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%82%AC%ED%94%84%EB%A1%9C%ED%95%84(%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0)"> WIKI로 이동</a>
- 상담사 목록에서 상담사 프로필 클릭시 상세보기로 이동
- 로그인한 본인의 상담사 상세보기 페이지라면 삭제가 가능
- 예약 버튼 클릭 시 예약 페이지로 이동
- 상담 후 댓글이 가능

<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%82%AC%ED%94%84%EB%A1%9C%ED%95%84(%EC%83%81%EC%84%B8%EB%B3%B4%EA%B8%B0)"> 
 <img src="https://github.com/NohEuijin/RedMedicine2/assets/141835418/e34eeebf-bb32-4e68-a7aa-4497a9a10189?type=w580" width="500">
  <img src="https://github.com/NohEuijin/RedMedicine2/assets/141835418/6e8bd8bb-5efd-4eef-aacb-d7b98382b577?type=w580" width="500">
</a>

### 🥩상담예약 회원관리<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%98%88%EC%95%BD-%ED%9A%8C%EC%9B%90%EA%B4%80%EB%A6%AC"> WIKI로 이동</a>
- 상담사는 로그인시 드롭다운에 상담예약관리가 생김
- 상담 예약 관리 페이지에서는 이름, 상담날짜, 시간으로 검색이 가능(비동기)
- 해당 페이지는 10을 기준으로 페이징 처리(비동기)
- 상담을 예약한 회원의 정보를 번호와 이메일, 상담 내역을 모달창으로 확인 가능(비동기
- 상담취소 또는 상담완료 버튼으로 관리 가능

<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%83%81%EB%8B%B4%EC%98%88%EC%95%BD-%ED%9A%8C%EC%9B%90%EA%B4%80%EB%A6%AC"> 
 <img src="https://github.com/donghyun3193/SpringRedMedicine/assets/131939490/5e4ce5c3-d455-4ebc-a67d-7cf4b76e90ee?type=w580" width="500">
</a>

### 🥩제휴등록<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%A0%9C%ED%9C%B4%EB%93%B1%EB%A1%9D"> WIKI로 이동</a>
- 제휴를 등록하면 유료상담사가 됨
- 결제 버튼을 누르면 카카오페이로 결제가 진행
- 결제 진행은 비동기로 처리

<a href="https://github.com/NohEuijin/RedMedicine2/wiki/%EC%A0%9C%ED%9C%B4%EB%93%B1%EB%A1%9D"> 
 <img src="https://github.com/NohEuijin/RedMedicine2/assets/141835418/5a08dc2d-6aba-415d-8537-ddd1b034ec89?type=w580" width="500">
</a>

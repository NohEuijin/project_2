package com.oww.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.UserDAO;
import com.oww.app.dto.UserDTO;
import com.oww.app.vo.SearchVO;

public class AdminController implements Execute {
 
	@Override
    public Result execute(HttpServletRequest req, HttpServletResponse res)
        throws IOException, ServletException {

    // 사용자가 선택한 검색 유형과 검색어를 가져옵니다.
    String searchType = req.getParameter("searchType"); // 검색 유형 (예: 제목, 닉네임, 내용)
    String keyword = req.getParameter("keyword");       // 검색어

    UserDAO userDAO = new UserDAO();
    
    // 검색 조건을 저장할 SearchVO 객체를 생성합니다.
    SearchVO searchVO = new SearchVO();
    searchVO.setKeyword(keyword);    // 검색어를 설정
    searchVO.setSearchType(searchType); // 검색 유형을 설정

	System.out.println(searchType);
	System.out.println(keyword);
    
    // 만약 검색 유형이 지정되지 않았을 경우, 기본값으로 'title' 검색을 설정합니다.
    if (searchVO.getSearchType() == null) {
        searchVO.setKeyword("");        // 검색어를 빈 문자열로 설정
        searchVO.setSearchType("email"); // 기본 검색 유형을 'title'로 설정
    }

    // 현재 페이지 번호를 초기화하고 요청 파라미터에서 가져옵니다.
    int page = 1; // 기본값은 1페이지
    String temp = req.getParameter("page");
    if (temp != null) {
        page = Integer.parseInt(temp); // 요청 파라미터에서 페이지 번호를 가져와 설정
    }

    int rowCount = 10; // 한 페이지에 보여질 항목 수
    int pageCount = 1; // 페이지 그룹 당 페이지 수

    // 현재 페이지에서 시작할 행(row) 번호를 계산합니다.
    int startRow = (page - 1) * rowCount;

    // 페이징을 위한 Map을 생성하고 필요한 정보를 설정합니다.
    Map<String, Object> pageMap = new HashMap<>();
    pageMap.put("startRow", startRow); // 현재 페이지의 시작 행 번호
    pageMap.put("rowCount", rowCount); // 한 페이지에 보여질 항목 수
    pageMap.put("searchVO", searchVO); // 검색 조건 객체를 전달

    // 검색 유형에 따라 검색 쿼리 메소드를 동적으로 호출하여 결과를 가져옵니다.
    List<UserDTO> userList = new ArrayList<>();
    if (searchVO.getSearchType().equals("email")) {
    	userList = userDAO.searchByEmailpage(pageMap, searchVO); // 제목 검색
    }else if (searchVO.getSearchType().equals("nickname")) {
    	userList = userDAO.searchByNicknamepage(pageMap, searchVO); // 내용 검색
    }

    // 전체 항목 수를 가져와 페이지 그룹을 계산합니다.
    int total = userDAO.getTotalCount();
    int endPage = (int) Math.ceil(page / (double) pageCount) * pageCount;
    int startPage = endPage - (pageCount - 1);;
    int realEndPage = (int) Math.ceil(total / (double) rowCount);

    // 만약 endPage가 실제 끝 페이지보다 크다면, 실제 끝 페이지로 조정합니다.
    endPage = Math.min(endPage, realEndPage);

    // 이전 페이지 및 다음 페이지 여부를 계산합니다.
    boolean prev = startPage > 1;
    boolean next = endPage < realEndPage;

    // 요청 객체 (request)에 페이징 및 검색 결과 정보를 설정합니다.
    req.setAttribute("page", page); // 현재 페이지 번호
    req.setAttribute("startPage", startPage); // 페이지 그룹의 시작 페이지
    req.setAttribute("endPage", endPage);     // 페이지 그룹의 끝 페이지
    req.setAttribute("prev", prev); // 이전 페이지 여부
    req.setAttribute("next", next); // 다음 페이지 여부
    req.setAttribute("userList", userList); // 검색 결과 목록

    req.getRequestDispatcher("/member/views/admin.jsp").forward(req, res);
    
    // 아무 결과도 반환하지 않음 (Result 객체가 null이므로, 화면 렌더링은 JSP 등에서 처리)
    return null;
    }
}
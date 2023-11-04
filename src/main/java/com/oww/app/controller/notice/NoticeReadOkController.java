package com.oww.app.controller.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.NoticeDAO;
import com.oww.app.vo.NoticeVO;

public class NoticeReadOkController implements Execute {

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	System.out.println("test1");
        int noticeNumber = Integer.parseInt(request.getParameter("noticeNumber"));

        // FboardDAO 인스턴스 생성
        NoticeDAO noticeDAO = new NoticeDAO();
    	System.out.println("test2");
        // fboardNumber를 기반으로 FboardVO를 가져옵니다.
    	NoticeVO noticeVO = noticeDAO.selectAll2(noticeNumber);
    	System.out.println("test3");
        // 요청 객체에 속성(attribute)을 설정합니다.
    	noticeDAO.countUpdate(noticeNumber);
    	//조회수 증가
        request.setAttribute("notice", noticeVO);
    	System.out.println("test4");
        // 원하는 JSP 페이지로 포워딩합니다.
        request.getRequestDispatcher("/board/views/adminReadNT.jsp").forward(request, response);

        
        
        return null;
    }
}

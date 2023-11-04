package com.oww.app.controller.fboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.FboardDAO;
import com.oww.app.dto.FboardDTO;
import com.oww.app.vo.FboardVO;

public class FboardReadOkController implements Execute {

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	System.out.println("test1");
        int fboardNumber = Integer.parseInt(request.getParameter("fboardNumber"));

        // FboardDAO 인스턴스 생성
        FboardDAO fboardDAO = new FboardDAO();

    	System.out.println("test2");
        // fboardNumber를 기반으로 FboardVO를 가져옵니다.
        FboardVO fboardVO = fboardDAO.selectAll2(fboardNumber);
    	System.out.println("test3");
        // 요청 객체에 속성(attribute)을 설정합니다.
    	
    	fboardDAO.countUpdate(fboardNumber); // 조회수 증가 부분

    	// 요청 객체에 "fboard" 속성을 설정합니다.
        request.setAttribute("fboard", fboardVO);
      	System.out.println("test4");
          	

        // 원하는 JSP 페이지로 포워딩합니다.
        request.getRequestDispatcher("/board/views/readingMy.jsp").forward(request, response);

        return null;
    }
}

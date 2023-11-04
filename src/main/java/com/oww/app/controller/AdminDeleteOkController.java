package com.oww.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.UserDAO;
import com.oww.app.dto.UserDTO;
import com.oww.app.vo.SearchVO;

public class AdminDeleteOkController implements Execute{
	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
        UserDAO userDAO = new UserDAO();
        Result result = new Result();
        int userNumber = Integer.parseInt(request.getParameter("userNumber"));

        // userNumber를 이용하여 회원 삭제 수행
        userDAO.deleteAdminUser(userNumber);

        result.setRedirect(true);
        result.setPath(request.getContextPath());
        
        String contextPath = request.getContextPath();
        response.sendRedirect(contextPath + "/project/admin.me");

        return result;
    }
}




















package com.oww.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.UserDAO;

public class UserDeleteOkController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		HttpSession session = request.getSession();
		int userNumber = (int) (session.getAttribute("userNumber"));
		
		System.out.println(userNumber+"없음");
		userDAO.deleteUser(userNumber);
		
		session.invalidate();
		
		System.out.println("삭제 처리");
		
		response.sendRedirect(request.getContextPath());
		return null;
	}

}

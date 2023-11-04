package com.oww.app.controller.fboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Execute;
import com.oww.app.Result;
import com.oww.app.dao.FboardDAO;
import com.oww.app.dto.FboardDTO;

public class FboardAdminbDeleteOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("test01");
		FboardDTO fboardDTO = new FboardDTO();
		FboardDAO fboardDAO = new FboardDAO();
		Result result = new Result();
		System.out.println("test02");

		int fboardNumber = Integer.valueOf(request.getParameter("fboardNumber"));

			System.out.println("test03");

			fboardDAO.delete(fboardNumber);
			
			System.out.println("test04");

	        result.setRedirect(true);
	        result.setPath(request.getContextPath());
			
	        String contextPath = request.getContextPath();
	        response.sendRedirect(contextPath + "/project/fboardListOk.fb");
			
		return null;
	}

}

package com.oww.app.controller.fboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Result;

/**
 * Servlet implementation class FboardFrontController
 */

public class FboardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FboardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request,response);
	}


	protected Result doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String target = request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(target);
		
		Result result = null;
		
		switch(target) {
		case "/project/fboardListOk.fb":
			System.out.println("fboardListOk");
			result = new FboardListOkController().execute(request, response);
			request.getRequestDispatcher("/board/project/freeBoard.jsp").forward(request, response);
			break;
		case "/board/views/writing.fb":
			System.out.println("fboardWrite 완료");
			result = new FboardWriteController().execute(request, response);
			request.getRequestDispatcher("/board/project/writing.jsp").forward(request, response);
			break;
		case "/board/views/fboardWriteOk.fb":
			System.out.println("fboardWriteOk 완료");
			result = new FboardWriteOkController().execute(request, response);
			break;
		case "/board/views/fboardDeleteOk.fb":
			System.out.println("fboardDeleteOk 완료");
			result = new FboardDeleteOkController().execute(request, response);
			break;
		case "/board/views/fboardAdminbDeleteOk.fb":
			System.out.println("fboardAdminbDeleteOk 완료");
			result = new FboardDeleteOkController().execute(request, response);
			break;
		case "/board/views/fboardUpdate.fb":
			System.out.println("fboardUpdate 완료");
			result = new FboardUpdateController().execute(request, response);
			break;
		case "/board/views/fboardUpdateOk.fb":
			System.out.println("fboardUpdateOk 완료");
			result = new FboardUpdateOkController().execute(request, response);
			break;
		case "/board/views/fboardReadOk.fb":
			System.out.println("fboardReadOk 완료");
			result = new FboardReadOkController().execute(request, response);
			break;
		}
		
	     
	      return result;
	}
}


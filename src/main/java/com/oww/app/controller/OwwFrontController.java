package com.oww.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oww.app.Result;

/**
 * Servlet implementation class OwwFrontController
 */

public class OwwFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwwFrontController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("UTF-8");
	      doProcess(request, response);
	}

	   protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      System.out.println(" 서블릿이 실행");
		      
		      //request.getContextPath()는 URL 루트 경로를 의미한다
		      System.out.println(request.getContextPath());
		      
		      //request.getRequestURI()는 현재 요청의 URI를 보여준다
		      System.out.println(request.getRequestURI());
		      
		      //전체 URI에서 ContextPath를 제외시킨 부분이 필요하다
		      String target = request.getRequestURI().substring(request.getContextPath().length());
		      System.out.println(target);
		      
		      Result result = null;
		      
		      //단순 값비교는 if문보다 switch문이 효율성이 좋고 가독성도 좋다
		      //break문을 꼭 써야한다!!
		      switch(target) {
		      case "/project/join.me":
		         System.out.println("join!!");
		         request.getRequestDispatcher("/member/project/join.jsp").forward(request, response);
		         break;
		         
		      case "/project/joinOk.me":
		         System.out.println("joinOk!!");
		         result = new JoinOkController().execute(request, response);

		         response.sendRedirect(request.getContextPath());
		         break;
		         
		         
		         
		      case "/project/login.me":
		         System.out.println("login!!");
		         request.getRequestDispatcher("/member/project/login.jsp").forward(request, response);
		         break;
		      case "/project/loginOk.me":
			     System.out.println("loginOk!!");
			     System.out.println(result);
		    	 result = new LoginOkController().execute(request, response);
		    	 System.out.println(result);
		         break;
		      case "/project/logoutOk.me":
		          System.out.println("logout!!");
		          result = new LogoutOkController().execute(request, response);
		          break;
		          
				case "/project/checkEmailOk.me":
					System.out.println("checkEmail잘됨");
					new CheckEmailOkController().execute(request, response);
					break;
					
				case "/project/checkNicknameOk.me":
					System.out.println("checkNickname잘됨");
					new CheckNicknameOkController().execute(request, response);
					break;
					
				case "/project/indexFboardListOk.me":
					System.out.println("메인페이지 자유게시판 잘됨");
					result = new IndexFboardListOkController().execute(request, response);
					break;

				case "/project/admin.me":
					System.out.println("관리자 페이지");
					result = new AdminController().execute(request, response);
					break;
				case "/project/adminb.me":
					System.out.println("관리자 게시글 페이지");
					result = new AdminBoardController().execute(request, response);
					break;
				case "/member/views/mypage.me":
					System.out.println("회원정보수정 페이지");
					request.getRequestDispatcher("/member/views/mypage.jsp").forward(request, response);
					result = new UserUpdateController().execute(request, response);
					break;
				case "/member/views/userUpdateOk.me":
					System.out.println("회원정보수정 완료");
//					request.getRequestDispatcher("/index.jsp").forward(request, response);
					result = new UserUpdateOkController().execute(request, response);
					System.out.println("============완료후");
					break;
				case "/member/views/userDeleteOk.me":
					System.out.println("====회원탈퇴 진입");
					result = new UserDeleteOkController().execute(request, response);
					System.out.println("회원탈퇴 완료후====");
					break;
				case "/member/views/adminUserDeleteOk.me":
					System.out.println("====회원탈퇴처리 진입");
					new AdminDeleteOkController().execute(request, response);
					System.out.println("회원탈퇴처리 완료후====");
					break;
				}
		      

		      
		      if(result != null) { // null 포인트 인셉션 
		          if(result.isRedirect()) {
		        	 //리다이렉션을 필요로 한다면
		             response.sendRedirect(result.getPath());
		             //sendRedirect는 post일때 사용(경로설정)
		             //회원 가입 후에는 바로 루트 페이지로 리다이렉션되도록
		          }else {
		        	//포워딩을 필요로 하면
		             request.getRequestDispatcher(result.getPath()).forward(request, response);
		             //result 객체의 경로로 포워딩을 수행한다.
		    	  }
		      }
		      
	   }
}

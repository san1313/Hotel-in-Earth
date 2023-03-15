package co.prod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class MainPageListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 페이지 재지정.
		//인규 작업중. 메인페이지 업로드를 위해 작업중. 중복작업 금지 0315
		//인규 작업중. 메인페이지 업로드를 위해 작업중. 중복작업 금지 0315
		
		//String path = "main_page/main_page.tiles";
		
		String path = "WEB-INF/views/login/sing_up.jsp";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

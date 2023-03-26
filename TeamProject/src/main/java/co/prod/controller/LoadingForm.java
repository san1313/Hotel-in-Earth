package co.prod.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class LoadingForm implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
//		"WEB-INF/views/main_page/hotel_info.jsp"
		String path = "WEB-INF/views/main_page/loading_page.jsp";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

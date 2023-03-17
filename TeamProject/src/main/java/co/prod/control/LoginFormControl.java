package co.prod.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

public class LoginFormControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

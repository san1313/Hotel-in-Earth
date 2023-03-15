package co.prod.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.controller.MainPageListControl;
import co.prod.controller.PostListControl;
import co.prod.controller.TestControl;

public class FrontController extends HttpServlet{
	// url패턴과 실행 컨트롤러 등록.
	// url - controller : map 등록.
	Map<String, Control> map = new HashMap<>();
	String enc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		enc = config.getInitParameter("encoding");
		map.put("/test.do", new TestControl()); // 삭제
		map.put("/postList.do", new PostListControl());
		map.put("/mainpage.do", new MainPageListControl());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(enc);
		// url - control 매칭.
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println(path);
		
		Control sub = map.get(path);
		sub.execute(req, resp);
	}
}

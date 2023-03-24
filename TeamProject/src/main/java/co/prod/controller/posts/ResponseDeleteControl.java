package co.prod.controller.posts;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;

public class ResponseDeleteControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String rid = request.getParameter("rid");
		String pid = request.getParameter("pid");
		if (rid != null) {
			PostsService service = new PostsServiceImpl();
			service.postRemove(Integer.parseInt(rid));
			Map<String, Object> map = new HashMap<>();
			map.put("pid", pid);
			map.put("response", "N");
			service.postResponseUpdate(map);
		}
		try {
			response.sendRedirect("viewPost.do?pid="+pid);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}

package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class ResponseModifyControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String rid = request.getParameter("rid");
		String content = request.getParameter("respContent");
		String pid = request.getParameter("pid");
		System.out.println(pid);
		System.out.println(rid);
		System.out.println(content);
		if (rid != null) {
			PostsVO vo = new PostsVO();
			vo.setPostId(Integer.parseInt(rid));
			vo.setPostContent(content);
			new PostsServiceImpl().responseModify(vo);
		}
		try {
			response.sendRedirect("viewPost.do?pid="+pid);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}

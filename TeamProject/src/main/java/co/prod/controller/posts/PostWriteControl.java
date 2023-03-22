package co.prod.controller.posts;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsService;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class PostWriteControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		PostsVO vo = new PostsVO();
		vo.setPostType(request.getParameter("type"));
		vo.setPostTitle(request.getParameter("title"));
		vo.setPostContent(request.getParameter("content"));
		vo.setUserEmail(request.getParameter("email"));

		PostsService service = new PostsServiceImpl();
		String requestId = request.getParameter("postRequestId");
		if (requestId != null) {
			vo.setPostRequestId(Integer.parseInt(requestId));
			service.postResponseUpdate(Integer.parseInt(requestId));
		}
		boolean result = service.writePost(vo);
		if (result) {
			try {
				response.sendRedirect("postList.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("viewPost.do?pid="+requestId);
		}
	}
}

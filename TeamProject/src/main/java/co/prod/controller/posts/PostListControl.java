package co.prod.controller.posts;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.PostsServiceImpl;
import co.prod.vo.PostsVO;

public class PostListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//질문, 공지, 자주묻는질문 각각 리스트로 가져와서
		List<PostsVO> list = new PostsServiceImpl().getPostsQuestion();
		List<PostsVO> list2 = new PostsServiceImpl().getPostsNotice();
		List<PostsVO> list3 = new PostsServiceImpl().getPostsFAQ();
		//아래 어트리뷰트에 담음
		request.setAttribute("questions", list);
		request.setAttribute("notices", list2);
		request.setAttribute("faqs", list3);
		try {
			request.getRequestDispatcher("posts/postsList.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}

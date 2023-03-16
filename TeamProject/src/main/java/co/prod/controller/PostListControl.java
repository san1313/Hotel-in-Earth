package co.prod.controller;

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
		List<PostsVO> list = new PostsServiceImpl().getPostsQuestion();
		List<PostsVO> list2 = new PostsServiceImpl().getPostsNotice();
		List<PostsVO> list3 = new PostsServiceImpl().getPostsFAQ();
		System.out.println(list);
		System.out.println(list2);
		System.out.println(list3);
		request.setAttribute("questions", list);
		request.setAttribute("notices", list2);
		request.setAttribute("faqs", list3);
		try {
			request.getRequestDispatcher("posts/posts.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}

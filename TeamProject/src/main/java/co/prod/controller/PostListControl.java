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
		List<PostsVO> list = new PostsServiceImpl().getPostsList();
		request.setAttribute("list", list);
		try {
			request.getRequestDispatcher("posts/posts.tiles").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}

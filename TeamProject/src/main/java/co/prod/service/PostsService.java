package co.prod.service;

import java.util.List;

import co.prod.vo.PostsVO;

public interface PostsService {
	public List<PostsVO> getPostsQuestion();
	public List<PostsVO> getPostsNotice();
	public List<PostsVO> getPostsFAQ();
}

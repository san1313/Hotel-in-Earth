package co.prod.mapper;

import java.util.List;

import co.prod.vo.PostsVO;

public interface PostsMapper {
	public List<PostsVO> getPostsQuestion();
	public List<PostsVO> getPostsNotice();
	public List<PostsVO> getPostsFAQ();
	
}

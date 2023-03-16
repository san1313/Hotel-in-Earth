package co.prod.service;

import java.util.List;

import co.prod.vo.PostsVO;

public interface PostsService {
	// 리스트 가져오는 기능
	public List<PostsVO> getPostsQuestion();
	public List<PostsVO> getPostsNotice();
	public List<PostsVO> getPostsFAQ();
	
	//단건조회
	public PostsVO getPost(int pid);
}

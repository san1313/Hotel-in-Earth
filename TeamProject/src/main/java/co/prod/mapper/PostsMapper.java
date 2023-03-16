package co.prod.mapper;

import java.util.List;

import co.prod.vo.PostsVO;

public interface PostsMapper {
	//리스트 가져오는 기능
	public List<PostsVO> getPostsQuestion();
	public List<PostsVO> getPostsNotice();
	public List<PostsVO> getPostsFAQ();
	//단건 조회
	public PostsVO getPost(int pid);
	public int writePost(PostsVO vo);
	
}

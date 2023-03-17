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
	
	//글쓰기
	public int writePost(PostsVO vo);
	
	//다음 작성할 글의 번호를 가져옴
	public int getPostId();
}

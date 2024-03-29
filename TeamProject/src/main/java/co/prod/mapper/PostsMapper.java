package co.prod.mapper;

import java.util.List;
import java.util.Map;

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
	
	//페이징
	//포스트 개수 가져오기
	public int getTotalCount(String type);
	//페이징 list
	public List<PostsVO> postListPaging(Map<String, Object> map);
	//답변 가져오기
	public PostsVO getPostResponse(int pid);
	//답변완료로 변경
	public int postResponseUpdate(Map<String, Object> map);
	//포스트삭제
	public int postRemove(int pid);
	//포스트 수정
	public int postModify(PostsVO vo);
	//답변수정
	public int responseModify(PostsVO vo);
}

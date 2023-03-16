package co.prod.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.PostsMapper;
import co.prod.vo.PostsVO;

public class PostsServiceImpl implements PostsService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PostsMapper mapper = sqlSession.getMapper(PostsMapper.class);
	
	@Override
	public List<PostsVO> getPostsQuestion() {
		
		return mapper.getPostsQuestion();
	}

	@Override
	public List<PostsVO> getPostsNotice() {
		
		return mapper.getPostsNotice();
	}

	@Override
	public List<PostsVO> getPostsFAQ() {
		
		return mapper.getPostsFAQ();
	}
	@Override
	public PostsVO getPost(int pid) {
		
		return mapper.getPost(pid);
	}
	@Override
	public boolean writePost(PostsVO vo) {
		
		return mapper.writePost(vo) == 1;
	}
}

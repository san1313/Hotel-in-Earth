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
	public List<PostsVO> getPostsList() {
		
		return mapper.getPostsQuestion();
	}
	
}

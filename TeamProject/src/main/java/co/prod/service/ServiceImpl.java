package co.prod.service;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.Mapper;
import co.prod.vo.UsersVO;

public class ServiceImpl implements Service {

	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private Mapper mapper = sqlSession.getMapper(Mapper.class);
	
	@Override
	public UsersVO login(UsersVO vo) {
		
		return mapper.login(vo);
	}

}

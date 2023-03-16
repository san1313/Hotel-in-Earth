package co.prod.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.prod.common.DataSource;
import co.prod.mapper.ManageHotelListMapper;
import co.prod.vo.HotelsVO;

public class ManagerHotelListServiceImpl implements ManageHotelListService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ManageHotelListMapper mapper = sqlSession.getMapper(ManageHotelListMapper.class);
	
	@Override
	public List<HotelsVO> getHotelList() {
		
		return mapper.getHotelList();
	}
}

package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.ManagerHotelListServiceImpl;
import co.prod.vo.HotelsVO;

public class ManageHotelListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<HotelsVO> list = new ManagerHotelListServiceImpl().getHotelList();
		
		for(int i=0; i<list.size(); i++) {
			HotelsVO testVO = list.get(i);
			testVO.setHotelPhoto((list.get(i).getHotelPhoto().split("\\+"))[0]);
			testVO.setHotelView((list.get(i).getHotelView().split("\\+"))[0]);
			list.set(i, testVO);
		}
		request.setAttribute("managehotellist", list);
		try {
			request.getRequestDispatcher("WEB-INF/views/manager/manageHotelList.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}

package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.velocity.runtime.directive.Parse;

import co.prod.common.Control;
import co.prod.service.ManageHotelListService;
import co.prod.service.ManagerHotelListServiceImpl;
import co.prod.vo.HotelsVO;
import co.prod.vo.PageDTO;

public class ManageHotelListControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String page1 = request.getParameter("page");
		int page;
		if(page1==null) {
			page = 1;
		}else {
			page = Integer.parseInt(page1);
			
		}
		
		List<HotelsVO> list = new ManagerHotelListServiceImpl().getHotelList(page);
		
		for(int i=0; i<list.size(); i++) {
			HotelsVO testVO = list.get(i);
			testVO.setHotelPhoto((list.get(i).getHotelPhoto().split("\\+"))[0]);
			testVO.setHotelView((list.get(i).getHotelView().split("\\+"))[0]);
			list.set(i, testVO);
		}
		request.setAttribute("managehotellist", list);
		
		int total= new ManagerHotelListServiceImpl().getTotalCount();
		
		PageDTO dto = new PageDTO(page, total);
		
		request.setAttribute("list", list);
		request.setAttribute("pageN", dto);
		
		System.out.println(list);
		try {
			request.getRequestDispatcher("WEB-INF/views/manager/manageHotelList.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}

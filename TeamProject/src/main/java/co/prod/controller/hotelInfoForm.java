package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.HotelFilterService;
import co.prod.service.HotelFilterServiceImpl;
import co.prod.vo.HotelsVO;

public class hotelInfoForm implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
//		HotelFilterService service = new HotelFilterServiceImpl();
		
//		List<HotelsVO> list = service.getHotelList();
//		request.setAttribute("hotelList", list);
//		"main_page/main_page.tiles"
//		"WEB-INF/views/main_page/main_page.jsp"
		
		String path = "main_page/hotel_info.tiles";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

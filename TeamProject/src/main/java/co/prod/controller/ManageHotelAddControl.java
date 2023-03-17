package co.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.ManageHotelListService;
import co.prod.service.ManagerHotelListServiceImpl;
import co.prod.vo.HotelsVO;

public class ManageHotelAddControl implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String hotelId = request.getParameter("code");
		String hotelLocation = request.getParameter("author");
		String hotelName = request.getParameter("title");
		String hotelTel = request.getParameter("press");
		String hotelService = request.getParameter("desc");
		String hotelView = request.getParameter("price");
		String hotelAddress = request.getParameter("price");
		String hotelPhoto = request.getParameter("price");
		String hotelCheckIn = request.getParameter("price");
		String hotelCheckOut = request.getParameter("price");

		
		
		
		System.out.println("test");
		HotelsVO vo = new HotelsVO();
		vo.setHotelId(hotelId);
		vo.setHotelLocation(hotelLocation);
		vo.setHotelName(hotelName);
		vo.setHotelTel(hotelTel);
		vo.setHotelService(hotelService);
		vo.setHotelView(hotelView);
		vo.setHotelAddress(hotelAddress);
		vo.setHotelPhoto(hotelPhoto);
		vo.setHotelCheckIn(hotelCheckIn);
		vo.setHotelCheckOut(hotelCheckOut);
		
		ManageHotelListService service = new ManagerHotelListServiceImpl();
		
		if(service.addHotel(vo)) {
			List<HotelsVO> list = service.getHotelList();
			
			request.setAttribute("list", list);
			try {
				request.getRequestDispatcher("manageHotelList.do").forward(request, response);
			} catch (ServletException | IOException e) {
				e.printStackTrace();
			}
		}
//			else {
//			request.getRequestDispatcher("WEB-INF/book/bookAddForm.jsp").forward(request, response);
//		}

	}

}

package co.prod.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;
import co.prod.service.HotelFilterService;
import co.prod.service.HotelFilterServiceImpl;
import co.prod.vo.HotelsVO;

public class purchasePageForm implements Control {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HotelFilterService service = new HotelFilterServiceImpl();
		String hotelId = request.getParameter("hotelId");
		HotelsVO hotelInfo = service.getHotelInfo(hotelId);
		
		int day = 0;
		String checkIn = request.getParameter("checkIn");
		String checkOut = request.getParameter("checkOut");
		
		System.out.println(checkIn);
		System.out.println(checkOut);
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		try {
			Date in = sdf.parse(checkIn);
			Date out = sdf.parse(checkOut);
			day = (int) ((out.getTime()-in.getTime())/1000/60/60/24);
			System.out.println((out.getTime()-in.getTime())/1000/60/60/24);
			System.out.println(in + " :IN데이터");
			System.out.println(out + " :OUT데이터");
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int sum = (hotelInfo.getHotelPrice() * day);
		
		request.setAttribute("day", day);
		request.setAttribute("hotelInfo", hotelInfo);
		request.setAttribute("sum", sum);
		
		
		
		
		
		
		
//		"main_page/hotel_info.tiles"
//		"WEB-INF/views/main_page/hotel_info.jsp"
		System.out.println("작동됨 ");
		String path = "main_page/purchase_page.tiles";
		try {
			request.getRequestDispatcher(path).forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

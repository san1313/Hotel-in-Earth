package co.prod.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.prod.common.Control;

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
		int hotelRate = request.getParameter("price");
		String hotelAddress = request.getParameter("price");
		String hotelPhoto = request.getParameter("price");
		String hotelCheckIn = request.getParameter("price");
		String hotelCheckOut = request.getParameter("price");
		int hotelLike = request.getParameter("price");

		BookVO vo = new BookVO();
		vo.setBookCode(code);
		vo.setBookAuthor(author);
		vo.setBookTitle(title);
		vo.setBookPress(press);
		vo.setBookDesc(desc);
		vo.setBookPrice(Integer.parseInt(price));
		
		BookService service = new BookServiceMybatis();
		
		if(service.addBook(vo)) {
			List<BookVO> list = service.bookList();
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("WEB-INF/book/bookList.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/book/bookAddForm.jsp").forward(request, response);
		}
		}
	}

}

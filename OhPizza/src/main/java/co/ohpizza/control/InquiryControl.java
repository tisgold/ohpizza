package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.vo.BoardVO;

public class InquiryControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardService BoardService = new BoardServiceImpl();

		String id= req.getParameter("id");
		
		List<BoardVO> inquiryList = BoardService.inquiryList(id);
		
//		System.out.println(inquiryList);
		
		req.setAttribute("inquiryList", inquiryList);
		
		req.getRequestDispatcher("board/inquiryList.tiles")//
		.forward(req, resp);
		
		
		
		
		

	}

}

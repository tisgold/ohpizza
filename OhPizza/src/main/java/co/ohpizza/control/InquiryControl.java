package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.vo.BoardVO;

public class InquiryControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		String id = (String) session.getAttribute("logId");
		
		BoardService bsv = new BoardServiceImpl();
		
		List<BoardVO> inquiryList = bsv.inquiryList(id);
		
		req.setAttribute("inquiryList", inquiryList);
		
		req.getRequestDispatcher("user/inquiryList.tiles").forward(req, resp);

	}

}

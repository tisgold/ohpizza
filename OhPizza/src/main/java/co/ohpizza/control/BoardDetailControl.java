package co.ohpizza.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.vo.BoardVO;

public class BoardDetailControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String bno = req.getParameter("bno");
		
		BoardService boardService = new BoardServiceImpl();
		
		BoardVO boardDetail = boardService.boardDetail(Integer.parseInt(bno));
		boardService.viewIncrease(Integer.parseInt(bno));
		
		req.setAttribute("boardDetail", boardDetail);
		
		req.getRequestDispatcher("board/boardDetail.tiles")//
		.forward(req, resp);
		
		

	}

}

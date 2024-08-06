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

public class BoardControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("board/board.tiles").forward(req, resp);
				
		String page = req.getParameter("page"); 
		page = page == null ? "1" : page;
		BoardService bsv = new BoardServiceImpl();
		List<BoardVO> boardList = bsv.boardList();
		
		req.setAttribute("boardList", boardList);

		req.getRequestDispatcher("product/board.tiles").forward(req, resp);
	}
}

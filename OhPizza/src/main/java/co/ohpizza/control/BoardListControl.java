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

public class BoardListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardService BoardServiceList = new BoardServiceImpl();
		List<BoardVO> boardList = BoardServiceList.boardList();
		
		
		req.setAttribute("boardList", boardList);
		
		req.getRequestDispatcher("board/boardList.tiles")//
		.forward(req, resp);
	}

}

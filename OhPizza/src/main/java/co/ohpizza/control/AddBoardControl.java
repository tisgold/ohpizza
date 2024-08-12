package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.vo.BoardVO;

public class AddBoardControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String title = req.getParameter("title");
		String review = req.getParameter("review");
		String id = req.getParameter("memID");

		BoardVO board = new BoardVO();
		board.setBoardTitle(title);
		board.setReview(review);
		board.setMemId(id);

		BoardService BoardService = new BoardServiceImpl();
		System.out.println(BoardService.insertViewBoard(board));

		if (BoardService.insertViewBoard(board)) {
			resp.sendRedirect("boardList.do");
		}else {
			resp.sendRedirect("boardForm.do");
		}
	}
}

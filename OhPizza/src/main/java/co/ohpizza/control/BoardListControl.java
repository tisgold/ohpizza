package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.common.PageDTO;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.service.PageService;
import co.ohpizza.service.PageServiceImpl;
import co.ohpizza.vo.BoardVO;

public class BoardListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BoardService BoardServiceList = new BoardServiceImpl();
		PageService psv = new PageServiceImpl();
		
		//게시판 출력
		List<BoardVO> boardList = BoardServiceList.boardList();
		req.setAttribute("boardList", boardList);
		//end 게시판 출력
		
		//페이지
		String page = req.getParameter("pageNum");
		page = page == null ? "1" : page;
		
		int totalCnt = psv.totalCount(Integer.parseInt(page));
		
		PageDTO pageDTO = new PageDTO(Integer.parseInt(page),totalCnt);
		
		req.setAttribute("pageOut", pageDTO);
		//end 페이지
		
		
		
		
		req.getRequestDispatcher("board/boardList.tiles")//
		.forward(req, resp);
	}

}

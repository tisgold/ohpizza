package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;
import co.ohpizza.vo.BoardVO;

public class AdminAnswerFormControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp)//
	throws ServletException, IOException {
		BoardService boardservice = new BoardServiceImpl();
		
		String title = req.getParameter("title");
		String answer = req.getParameter("answer");
		
		BoardVO boardvo = new BoardVO();
		boardvo.setBoardTitle(title);
		boardvo.setAnswer(answer);
		
		if(boardservice.)
		

	}

}

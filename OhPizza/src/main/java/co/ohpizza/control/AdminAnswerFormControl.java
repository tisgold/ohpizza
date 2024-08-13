package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.BoardService;
import co.ohpizza.service.BoardServiceImpl;

public class AdminAnswerFormControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp)//
	throws ServletException, IOException {
		BoardService boardservice = new BoardServiceImpl();
		
		

	}

}

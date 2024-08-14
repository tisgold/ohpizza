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

public class AdminAnswerForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp)//
			throws ServletException, IOException {

		String bno = req.getParameter("bno");
		String question = req.getParameter("question");

		req.setAttribute("bno", bno);
		req.setAttribute("question", question);

		req.getRequestDispatcher("admin/adminAnswerForm.tiles").forward(req, resp);
	}

}

package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.vo.ProductVO;

public class EventControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductVO pvo = new ProductVO();

		req.setAttribute("prod", pvo);
		req.getRequestDispatcher("event/event.tiles").forward(req, resp);
		req.getRequestDispatcher("event/newMenu.tiles").forward(req, resp);
	}

}

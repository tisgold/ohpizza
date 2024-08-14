package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.ProductService;
import co.ohpizza.service.ProductServiceImpl;
import co.ohpizza.vo.ProductVO;

public class NewmenuControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String img = req.getParameter("img");
		req.setAttribute("img", img);
		
		
		
		req.getRequestDispatcher("event/newMenu.tiles").forward(req, resp);
	}

}

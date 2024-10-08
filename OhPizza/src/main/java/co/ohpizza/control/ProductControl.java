package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.ProductService;
import co.ohpizza.service.ProductServiceImpl;
import co.ohpizza.vo.ProductVO;

public class ProductControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String prodNo = req.getParameter("prodNo");
		
		ProductVO pvo = new ProductVO();
		ProductService svc = new ProductServiceImpl();
		pvo = svc.selectProduct(Integer.parseInt(prodNo));
		
		

		req.setAttribute("prod", pvo);
		req.getRequestDispatcher("product/productInfo.tiles").forward(req, resp);

	}

}

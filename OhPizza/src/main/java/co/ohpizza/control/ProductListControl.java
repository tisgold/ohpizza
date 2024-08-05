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

public class ProductListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type");
		String grade = req.getParameter("grade");
		grade = grade == null ? null : grade;
		type = type == null ? "pizza" : type;
		ProductService svc = new ProductServiceImpl();
		List<ProductVO> glist = svc.productGList(type, grade);
		List<ProductVO> list = svc.productList(type);
		
		req.setAttribute("type", type);
		req.setAttribute("grade", grade);
		req.setAttribute("productList", list);
		req.setAttribute("productGList", glist);
		req.getRequestDispatcher("product/productList.tiles").forward(req, resp);

	}

}

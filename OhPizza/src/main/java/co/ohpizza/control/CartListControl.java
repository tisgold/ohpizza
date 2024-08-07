package co.ohpizza.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.CartService;
import co.ohpizza.service.CartServiceImpl;
import co.ohpizza.service.ProductService;
import co.ohpizza.service.ProductServiceImpl;
import co.ohpizza.vo.CartVO;
import co.ohpizza.vo.ProductVO;

public class CartListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");  //한글이 깨질수도 있어서 UTF-8로 인코딩 처리
		String memId = req.getParameter("id");
		
		CartService cartService = new CartServiceImpl();
		ProductService pService = new ProductServiceImpl();
		
		ProductVO p = new ProductVO();
		
		List<CartVO> cList = cartService.selectCartL(memId);
		List<ProductVO> pList = new ArrayList<ProductVO>();
		
		for(CartVO cvo:cList) {
			p = pService.selectProduct(cvo.getProdNo());
			pList.add(p);
		}
		
		
		
		req.setAttribute("pList", pList);
		req.setAttribute("cList", cList);
		req.getRequestDispatcher("product/cartList.tiles").forward(req, resp);

	}
	
}


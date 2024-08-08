package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;

public class AddOrderControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String prodName = req.getParameter("prodName");
		String memId = req.getParameter("memId");
		String price = req.getParameter("price");
		
		OrderService osvc = new OrderServiceImpl();
		osvc.addOrder(memId, price);
		
		req.getRequestDispatcher("product/productList.tiles").forward(req, resp);

	}

}

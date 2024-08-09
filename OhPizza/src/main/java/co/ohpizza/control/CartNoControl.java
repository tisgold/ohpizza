package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.OrderListService;
import co.ohpizza.service.OrderListServiceImpl;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;
import co.ohpizza.vo.OrderVO;

public class CartNoControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("memId");
		
		OrderService osvc = new OrderServiceImpl();
		
		OrderVO ovo = osvc.selectOrder(id);
		
		OrderListService olsvc = new OrderListServiceImpl();
		
		
		
		int cartNo = olsvc.countOrderList(ovo.getOrdNo());
		
		req.setAttribute("cartNo", cartNo);
		
		req.getRequestDispatcher("layout/header.jsp").forward(req, resp);
		

	}

}

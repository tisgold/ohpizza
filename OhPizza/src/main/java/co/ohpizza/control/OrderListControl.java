package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;
import co.ohpizza.vo.OrderVO;

public class OrderListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		OrderService svc = new OrderServiceImpl();
		
		List<OrderVO> list = svc.orderList(id);
		req.setAttribute("orders", list);
		req.getRequestDispatcher("user/orderList.tiles").forward(req, resp);

	}

}

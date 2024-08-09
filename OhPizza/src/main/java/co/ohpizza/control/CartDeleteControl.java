package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.OrderListService;
import co.ohpizza.service.OrderListServiceImpl;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;
import co.ohpizza.vo.OrderlistVO;

public class CartDeleteControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String listNo = req.getParameter("listNo");
		String id = req.getParameter("id");
		
		System.out.println(id);
		OrderListService olsvc = new OrderListServiceImpl();
		
		OrderService osvc = new OrderServiceImpl();
		
		

		
		
		
		
		
		
		
		if(olsvc.deleteOrderList(Integer.parseInt(listNo))) {
			
			int ordNo = osvc.selectOrder(id).getOrdNo();
			List<OrderlistVO> oList = olsvc.selectOrderListL(ordNo);
			int fullPrice = 0;
			
			for(OrderlistVO o: oList) {
				System.out.println(o.getCount() +"  " + o.getProdPrice());
				int a = o.getCount()*o.getProdPrice();				
				fullPrice += a;
				System.out.println(fullPrice);
			}
			osvc.priceOrder(fullPrice, ordNo);
			
			
			
			req.setAttribute("id", id);
			req.getRequestDispatcher("cart.do").forward(req, resp);
		} else {
			resp.sendRedirect("cart.do");
		}
	
		
		

	}

}

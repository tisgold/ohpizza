package co.ohpizza.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.MemberService;
import co.ohpizza.service.MemberServiceImpl;
import co.ohpizza.service.OrderListService;
import co.ohpizza.service.OrderListServiceImpl;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;
import co.ohpizza.vo.MemberVO;
import co.ohpizza.vo.OrderVO;
import co.ohpizza.vo.OrderlistVO;

public class PayControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		OrderService osvc = new OrderServiceImpl();
		
		List<OrderlistVO> cart = new ArrayList<OrderlistVO>();
		
		OrderVO ovo = osvc.selectOrder(id);
		
		OrderListService olsvc = new OrderListServiceImpl();
		
		MemberService msvc = new MemberServiceImpl();
		
		MemberVO mvo = msvc.infoMember(id);
		
		
		
		cart = olsvc.selectOrderListL(ovo.getOrdNo());
		
		int aPrice = ovo.getPrice();
		
		req.setAttribute("member", mvo);
		
		req.setAttribute("cartList", cart);
		
		req.setAttribute("aPrice", aPrice);
		
		
		req.getRequestDispatcher("product/pay.tiles").forward(req, resp);
		

	}

}

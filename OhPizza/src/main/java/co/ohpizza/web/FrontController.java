package co.ohpizza.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.control.LoginCheckControl;
import co.ohpizza.control.LoginControl;
import co.ohpizza.control.MemberListControl;
import co.ohpizza.control.ProductControl;
import co.ohpizza.control.ProductListControl;
import co.ohpizza.control.AddMemberControl;
import co.ohpizza.control.BoardListControl;
import co.ohpizza.control.CreateMemberControl;
import co.ohpizza.control.EventControl;
import co.ohpizza.control.EventsProgress;
import co.ohpizza.control.MypageControl;
import co.ohpizza.control.NewmenuControl;

import co.ohpizza.control.OrderListControl;


public class FrontController extends HttpServlet {
	Map<String, Control> map;

	public FrontController() {
		map = new HashMap<>();
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// 상품목록
		map.put("/productList.do", new ProductListControl());
		
		// 상품상세
		map.put("/productInfo.do", new ProductControl());
		
		// 로그인 화면
		map.put("/login.do", new LoginControl());
		// 로그인 체크
		map.put("/loginCheck.do", new LoginCheckControl());
		
		// 회원가입 화면
		map.put("/addMember.do", new AddMemberControl());
		// 회원가입 (멤버 추가)
		map.put("/createMember.do", new CreateMemberControl());
		
		// 이벤트
		map.put("/event.do", new EventControl());
		
		// 이벤트 신메뉴
		map.put("/newmenu.do", new NewmenuControl());
		
		// 진행중인 이벤트 (쿠폰 발행 이벤트)
		map.put("/eventsProgress", new EventsProgress());
		
		// 게시판
		map.put("/boardList.do", new BoardListControl());
		
		// 나의오피
		map.put("/myPage.do", new MypageControl());
		// 내주문내역
		map.put("/myOrders.do", new OrderListControl());
		
		// 멤버 리스트 (Admin 로그인 시)
		map.put("/memberList.do", new MemberListControl());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());

		System.out.println(path);

		Control sub = map.get(path);
		sub.exec(req, resp);
	}
}

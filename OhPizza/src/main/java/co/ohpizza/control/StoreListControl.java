package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.StoreService;
import co.ohpizza.service.StoreServiceImpl;
import co.ohpizza.vo.StoreVO;

public class StoreListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StoreService ssv = new StoreServiceImpl();
		List<StoreVO> stores = ssv.storeList();
		
		req.setAttribute("stores", stores);
		req.getRequestDispatcher("admin/storeList.tiles").forward(req, resp);

	}

}

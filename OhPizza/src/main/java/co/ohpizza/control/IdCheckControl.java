package co.ohpizza.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.google.gson.Gson;

import co.ohpizza.common.Control;
import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.MemberMapper;
import co.ohpizza.service.MemberService;
import co.ohpizza.service.MemberServiceImpl;

public class IdCheckControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8"); // 한글이 깨질수도 있어서 UTF-8로 인코딩 처리
		SqlSession sqlSession = DataSource.getInstance().openSession(true); // <--true 써야지 자동커밋
		MemberMapper memberService = sqlSession.getMapper(MemberMapper.class);
		// --------------아이디 중복체크 ---------------

		String loginId = req.getParameter("loginId");

		MemberService memberService1 = new MemberServiceImpl();
		boolean isAvailable = memberService1.duplicateId(loginId);

		Map<String, Object> result = new HashMap<>();
		if (isAvailable) {
			result.put("retCode", "Success");
			result.put("retVal", "ok");
		} else {
			result.put("retCode", "Fail");
			result.put("retVal", "duplicate");
		}
		Gson gson = new Gson();
		String jsonResult = gson.toJson(result);

		resp.getWriter().write(jsonResult);
	}

}

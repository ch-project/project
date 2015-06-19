//MemberController.java -> 컨트롤러클래스. 데이터베이스 액세스 전용 클래스
package controllers;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import model.Member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("memberController")
public class LoginController {

	// iBatis 연결 객체인 IBatisDaoImpl 클래스를 dao 변수와 연결시킨다.
	@Resource(name = "dao")
	private CommonDAO dao;

	@RequestMapping(value = "/memberList.mvc", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String memberList(Member dto, HttpServletRequest req) {

		try {
			List<Object> arrayList = dao.getListData("mySql.listsMember");
			req.setAttribute("arrayList", arrayList);
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return "memberList.jsp";
	}

	@RequestMapping(value = "/memberInsertForm.mvc", method = {
			RequestMethod.GET, RequestMethod.POST })
	public String memberInsertForm() {
		// forward() 메소드 역할
		return "memberInsertForm.jsp";
	}

	@RequestMapping(value = "/memberInsert.mvc", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String memberInsert(MemberDTO dto, HttpServletRequest req) {

		try {
			dao.insertData("mySql.addMember", dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		// sendRedirect() 메소드 역할
		return "redirect:memberList.mvc";
	}
}

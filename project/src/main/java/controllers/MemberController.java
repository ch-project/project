package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.Service1;


@Controller
public class MemberController {
	@Autowired
	private Service1 service1;
	

	//로고 클릭시.. 등등 메인으로
	@RequestMapping(value="main")
	public String index() {
		return "main";
	}
	
	//메인화면에서 로그인 버튼 클릭
	@RequestMapping(value="login")
	public String login(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String password  = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
		session.setAttribute("password",password);
		return "main";
	}
	
	//메인화면에서 가입하기 버튼 클릭
	@RequestMapping(value="join_page")
	public String join_page() {
		return "join";
	}
	
	//회원강비 폼에서 아이디중복체크 버튼 클릭
	@RequestMapping(value="{id_chk}")
	public String id_chk(HttpServletRequest request,Model model) {
		String id = request.getParameter("id");
		String idcheck_result = service1.getId(id);
		if(idcheck_result==null) {
			model.addAttribute("id", id);
			model.addAttribute("message", id+"는 사용가능한 아이디입니다.");
		} else {
			model.addAttribute("message", id+"는 이미 있는 아이디입니다.");
		}
		return "join_page";
	}

	//회원가입 폼에서 가입하기 버튼 클릭
	@RequestMapping(value="join_query")
	public String join_result(Member meber) {
		
		return "join_success";
	}
	
	// 메인화면에서 비밀번호 찾기 버튼 클릭
	@RequestMapping(value="find")
	public String find_page() {
		return "find";
	}
	
	//아이디 이름 이메일 입력후 비밀번호 찾기 버튼 클릭
	@RequestMapping(value="find_result")
	public String find_result() {
		int i=1;
		if(i==1) {
			
			return "aaa";
		} else {
			
			return "aaa";
		}
	}
	
	//지도에서 어느한 지역을 선택했을 때
	@RequestMapping(value="select_local")
	public String select_local(Model model, HttpServletRequest request) {
		int plague = 1;
		int locCode = Integer.parseInt(request.getParameter("selectbox_local"));
		String map_picture_src = null;
		switch(locCode) {
		case 1: map_picture_src = "./img/seoul.jpg"; break;
		case 2: map_picture_src = "./img/gg.jpg"; break;
		case 3: map_picture_src = "./img/kw.jpg"; break;
		case 4: map_picture_src = "./img/cc.jpg"; break;
		case 5: map_picture_src = "./img/jr.jpg"; break;
		case 6: map_picture_src = "./img/ks.jpg"; break;
		case 7: map_picture_src = "./img/jj.jpg"; break;
		}
		//object[] a = service1.minibylocCode(locCode);
		//model.addAtrribute("a",a);
		model.addAttribute("map_picture_src", map_picture_src);
		model.addAttribute("plague", plague);
		return "main";
	}
}

package controllers;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.Service1;
import model.Member;


@Controller
public class MemberController {
	@Autowired
	private Service1 service1;
	
	//로고 클릭시
	@RequestMapping(value="main.html")
	public String index() {
		System.out.print(1);
		return "main";
	}
	
	//메인화면에서 로그인 버튼 클릭
	@RequestMapping(value="login.html")
	public String login() {
		return "aaa";
	}
	
	//메인화면에서 가입하기 버튼 클릭
	@RequestMapping(value="join_page.html")
	public String join_page() {
		return "join";
	}

	//가입 폼에서 가입하기 버튼 클릭
	@RequestMapping(value="join_result.html")
	public String join_result(Member meber) {
		//service1.createmember(member);
		return "join_success";
	}
	
	// 메인화면에서 비밀번호 찾기 버튼 클릭
	@RequestMapping(value="find.html")
	public String find_page() {
		return "find";
	}
	
	//아이디 이름 이메일 입력후 비밀번호 찾기 버튼 클릭
	@RequestMapping(value="find_result.html")
	public String find_result() {
		int i=1;
		if(i==1) {
			
			return "aaa";
		} else {
			
			return "aaa";
		}
	}
	
	//지도에서 어느한 지역을 선택했을 때
	@RequestMapping(value="select_local.html")
	public String select_local(Model model, HttpServletRequest request) {
		int plague = 1;
		int locCode = Integer.parseInt(request.getParameter("selectbox_local"));
		String map_picture_src = null;
		switch(locCode) {
		case 1:
			map_picture_src = "./img/seoul.jpg";
			break;
		case 2:
			map_picture_src = "./img/gg.jpg";
			break;
		case 3:
			map_picture_src = "./img/kw.jpg";
			break;
		case 4:
			map_picture_src = "./img/cc.jpg";
			break;
		case 5:
			map_picture_src = "./img/jr.jpg";
			break;
		case 6:
			map_picture_src = "./img/ks.jpg";
			break;
		case 7:
			map_picture_src = "./img/jj.jpg";
			break;
		}
		
		//String mappicture = service1.blablaByLocCode(locCode);
		
		model.addAttribute("map_picture_src", map_picture_src);
		model.addAttribute("plague", plague);
		return "main";
	}
}

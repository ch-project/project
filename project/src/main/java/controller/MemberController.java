package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	// 로고 클릭시
	@RequestMapping(value = "index.html")
	public String index() {
		return "index";
	}

	// 메인화면에서 로그인 버튼 클릭
	@RequestMapping(value = "login.html")
	public String login() {
		return "aaa";
	}

	// 메인화면에서 가입하기 버튼 클릭
	@RequestMapping(value = "join.html")
	public String join_page() {
		return "join";
	}

	// 가입 폼에서 가입하기 버튼 클릭
	@RequestMapping(value = "join_result.html")
	public String join_result() {
		return "aaa";
	}

	// 메인화면에서 비밀번호 찾기 버튼 클릭
	@RequestMapping(value = "find.html")
	public String find_page() {
		return "find";
	}

	// 아이디 이름 이메일 입력후 비밀번호 찾기 버튼 클릭
	@RequestMapping(value = "find_result.html")
	public String find_result() {
		int i = 1;
		if (i == 1) {

			return "aaa";
		} else {

			return "aaa";
		}
	}

	// 지도에서 어느한 지역을 선택했을 때
	@RequestMapping(value = "select_local.html")
	public String select_local() {
		return "local";
	}
}

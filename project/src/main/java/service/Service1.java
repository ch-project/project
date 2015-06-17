package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;
import dto.Member;

@Service
public class Service1 {
	@Autowired
	private MemberDao memberdao;
	
	public int createMember(Member member) {
		return this.memberdao.createMember(member);
	}
	
	public String blablaByLocCode(String locCode) {
		return this.memberdao.blablaByLocCode(locCode);
	}
}

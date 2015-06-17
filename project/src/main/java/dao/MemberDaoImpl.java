package dao;

import org.springframework.stereotype.Repository;

import dto.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	public int createMember(Member member) {
		
		return 0;
	}
	public String blablaByLocCode(String LocCode) {
		String pic_finally = "";
		//pic_finally = session.selectOne("selectLocPicUrl", locCode);
		return pic_finally;
	}
	
}

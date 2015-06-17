package dao;

import model.Member;

public interface MemberDao {
	public int createMember(Member member);
	public String blablaByLocCode(String LocCode);
	//public int updateMember(Member member);
	//public int deleteMember(String mId);
}

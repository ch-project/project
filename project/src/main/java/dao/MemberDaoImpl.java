package dao;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao{

	public String blablaByLocCode(String LocCode) {
		String pic_finally = "";
		//pic_finally = session.selectOne("selectLocPicUrl", locCode);
		return pic_finally;
	}
	
}

package dao;

import model.Member;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Override
	public Member findByUserIdAndPassword(String userId, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}

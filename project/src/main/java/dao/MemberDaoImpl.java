package dao;

<<<<<<< HEAD
import java.io.IOException;
import java.io.Reader;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
=======
import model.Member;

>>>>>>> b2315bba455bfbda78f41d5137e997f41d4e7d5a
import org.springframework.stereotype.Repository;

import com.ibatis.common.resources.Resources;



@Repository
public class MemberDaoImpl implements MemberDao{
	private SqlSession getQsession() throws IOException{
		String batis_conf_src = "mybatis/batis_configuration.xml";
		Reader reader = Resources.getResourceAsReader(batis_conf_src);
		SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		SqlSession qsession = sqlMapper.openSession(true);
		return qsession;
	}

<<<<<<< HEAD
	public String getId(String id) {
		String id2 = null;
		SqlSession qsession = null;
		try {
			qsession = getQsession();
			id2 = qsession.selectOne("selectId", id);
		} catch (Exception e){
			System.out.println(e.getMessage());
		} finally {
			qsession.close();
		}
		return id2;
	}
	
=======
	@Override
	public Member findByUserIdAndPassword(String userId, String password) {
		// TODO Auto-generated method stub
		return null;
	}

>>>>>>> b2315bba455bfbda78f41d5137e997f41d4e7d5a
}

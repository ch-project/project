package dao;

import java.io.IOException;
import java.io.Reader;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
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
	
}

package columbarium.dao.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import columbarium.dao.ConnectionManager;

public class MybatisConnectionManager implements ConnectionManager{

	private SqlSessionFactory sessionFactory;
	
	@Override
	public void establishConnection(){
		// TODO Auto-generated method stub
		try{
			if (sessionFactory == null){
				String resource = "columbarium/dao/mybatis/conf/config.xml";
				InputStream inputStream = Resources.getResourceAsStream(resource);
				sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void stopConnection() {
		// TODO Auto-generated method stub
		
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		return this.sessionFactory;
	}

}

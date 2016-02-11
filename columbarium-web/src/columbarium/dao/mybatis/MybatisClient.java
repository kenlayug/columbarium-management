package columbarium.dao.mybatis;

import org.apache.ibatis.session.SqlSessionFactory;

public abstract class MybatisClient {

	private MybatisConnectionManager connectionManager;
	
	public MybatisClient(MybatisConnectionManager connectionManager){
		this.connectionManager = connectionManager;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		return connectionManager.getSqlSessionFactory();
	}
	
}

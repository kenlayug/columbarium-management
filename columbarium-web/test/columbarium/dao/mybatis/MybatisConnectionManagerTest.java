package columbarium.dao.mybatis;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisConnectionManagerTest extends TestCase{

	public MybatisConnectionManagerTest(String testName){
		super(testName);
	}
	
	public void testEstablishConnection() throws Exception{
		
		MybatisConnectionManager mybatisConnectionManager = new MybatisConnectionManager();
		mybatisConnectionManager.establishConnection();
		assertNotNull(mybatisConnectionManager.getSqlSessionFactory());
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		suite.addTest(new MybatisConnectionManagerTest("testEstablishConnection"));
		return suite;
		
	}
	
}

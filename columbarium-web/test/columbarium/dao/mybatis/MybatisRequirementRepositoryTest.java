package columbarium.dao.mybatis;

import columbarium.model.Requirement;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisRequirementRepositoryTest extends TestCase{

	public MybatisRequirementRepositoryTest(String testName){
		super(testName);
	}
	
	public void testCreateRequirement(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisRequirementRepository requirementRepository =
				new MybatisRequirementRepository(connectionManager);
		
		Requirement requirement = new Requirement();
		requirement.setStrRequirementName("Valid ID");
		requirement.setStrRequirementDesc("A valid id that represents you.");
		
		assertEquals("success", requirementRepository.createRequirement(requirement));
		
	}
	
	public void testReadRequirement(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisRequirementRepository requirementRepository =
				new MybatisRequirementRepository(connectionManager);
		
		Requirement requirement = new Requirement();
		requirement.setStrRequirementName("Valid ID");
		
		assertNotNull(requirementRepository.readRequirement(requirement));
		
	}
	
	public void testUpdateRequirement(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisRequirementRepository requirementRepository =
				new MybatisRequirementRepository(connectionManager);
		
		Requirement requirement = new Requirement();
		requirement.setStrRequirementName("Valid ID");
		
		requirement.setRequirementId(requirementRepository.readRequirement(requirement).getRequirementId());
		requirement.setStrRequirementDesc("Ano ba to?");
		
		assertEquals("success", requirementRepository.updateRequirement(requirement));
		
	}
	
	public void testDeactivateRequirement(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisRequirementRepository requirementRepository =
				new MybatisRequirementRepository(connectionManager);
		
		Requirement requirement = new Requirement();
		requirement.setStrRequirementName("Valid ID");
		
		requirement.setRequirementId(requirementRepository.readRequirement(requirement).getRequirementId());
		
		assertEquals("success", requirementRepository.deactivateRequirement(requirement));
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisRequirementRepositoryTest("testCreateRequirement"));
		suite.addTest(new MybatisRequirementRepositoryTest("testReadRequirement"));
		suite.addTest(new MybatisRequirementRepositoryTest("testUpdateRequirement"));
		suite.addTest(new MybatisRequirementRepositoryTest("testDeactivateRequirement"));
		
		return suite;
		
		
	}
	
}

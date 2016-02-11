package columbarium.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import columbarium.dao.ConnectionManager;
import columbarium.dao.EmployeeRepository;
import columbarium.dao.mybatis.MybatisConnectionManager;
import columbarium.dao.mybatis.MybatisEmployeeRepository;
import columbarium.service.EmployeeService;
import columbarium.service.impl.EmployeeServiceImpl;

public class MainContextListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("Context Listener destroyed...");
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		ServletContext servletContext = event.getServletContext();
		try{
			
			ConnectionManager connectionManager = new MybatisConnectionManager();
			connectionManager.establishConnection();
			
			//Employee
			EmployeeRepository employeeRepository =
					new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
			EmployeeService employeeService = new EmployeeServiceImpl();
			((EmployeeServiceImpl)employeeService).setEmployeeRepository(employeeRepository);
			servletContext.setAttribute("employeeService", employeeService);
			
			System.out.println("Context Listener initialized...");
			
		}catch(Exception e){
			
		}
	}

}

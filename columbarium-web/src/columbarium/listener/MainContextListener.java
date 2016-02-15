package columbarium.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import columbarium.business.EmployeeBusiness;
import columbarium.business.ItemBusiness;
import columbarium.business.PackageBusiness;
import columbarium.business.ServiceBusiness;
import columbarium.business.impl.EmployeeBusinessImpl;
import columbarium.business.impl.ItemBusinessImpl;
import columbarium.business.impl.PackageBusinessImpl;
import columbarium.business.impl.ServiceBusinessImpl;
import columbarium.dao.ConnectionManager;
import columbarium.dao.EmployeeRepository;
import columbarium.dao.ItemRepository;
import columbarium.dao.PackageRepository;
import columbarium.dao.ServiceRepository;
import columbarium.dao.mybatis.MybatisConnectionManager;
import columbarium.dao.mybatis.MybatisEmployeeRepository;
import columbarium.dao.mybatis.MybatisItemRepository;
import columbarium.dao.mybatis.MybatisPackageRepository;
import columbarium.dao.mybatis.MybatisServiceRepository;
import columbarium.service.EmployeeService;
import columbarium.service.ItemService;
import columbarium.service.ServiceService;
import columbarium.service.PackageService;
import columbarium.service.impl.EmployeeServiceImpl;
import columbarium.service.impl.ItemServiceImpl;
import columbarium.service.impl.PackageServiceImpl;
import columbarium.service.impl.ServiceServiceImpl;

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
			EmployeeBusiness employeeBusiness = new EmployeeBusinessImpl();
			((EmployeeBusinessImpl)employeeBusiness).setEmployeeRepository(employeeRepository);
			EmployeeService employeeService = new EmployeeServiceImpl();
			((EmployeeServiceImpl)employeeService).setEmployeeRepository(employeeRepository);
			((EmployeeServiceImpl)employeeService).setEmployeeBusiness(employeeBusiness);
			servletContext.setAttribute("employeeService", employeeService);
			
			//Service
			ServiceRepository serviceRepository =
					new MybatisServiceRepository((MybatisConnectionManager)connectionManager);
			ServiceBusiness serviceBusiness = new ServiceBusinessImpl();
			((ServiceBusinessImpl)serviceBusiness).setServiceRepository(serviceRepository);
			ServiceService serviceService = new ServiceServiceImpl();
			((ServiceServiceImpl)serviceService).setServiceBusiness(serviceBusiness);
			((ServiceServiceImpl)serviceService).setServiceRepository(serviceRepository);
			servletContext.setAttribute("serviceService", serviceService);
			
			//Item
			ItemRepository itemRepository =
					new MybatisItemRepository((MybatisConnectionManager)connectionManager);
			ItemBusiness itemBusiness = new ItemBusinessImpl();
			((ItemBusinessImpl)itemBusiness).setItemRepository(itemRepository);
			ItemService itemService = new ItemServiceImpl();
			((ItemServiceImpl)itemService).setItemBusiness(itemBusiness);
			((ItemServiceImpl)itemService).setItemRepository(itemRepository);
			servletContext.setAttribute("itemService", itemService);
			
			//Package
			PackageRepository packageRepository =
					new MybatisPackageRepository((MybatisConnectionManager)connectionManager);
			PackageBusiness packageBusiness = new PackageBusinessImpl();
			((PackageBusinessImpl)packageBusiness).setPackageRepository(packageRepository);
			PackageService packageService = new PackageServiceImpl();
			((PackageServiceImpl)packageService).setPackageBusiness(packageBusiness);
			((PackageServiceImpl)packageService).setPackageRepository(packageRepository);
			servletContext.setAttribute("packageService", packageService);
			
			System.out.println("Context Listener initialized...");
			
		}catch(Exception e){
			
		}
	}

}

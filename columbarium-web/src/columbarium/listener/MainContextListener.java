package columbarium.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import columbarium.business.BlockBusiness;
import columbarium.business.BuildingBusiness;
import columbarium.business.EmployeeBusiness;
import columbarium.business.FloorBusiness;
import columbarium.business.ItemBusiness;
import columbarium.business.PackageBusiness;
import columbarium.business.RequirementBusiness;
import columbarium.business.ServiceBusiness;
import columbarium.business.UnitBusiness;
import columbarium.business.impl.BlockBusinessImpl;
import columbarium.business.impl.BuildingBusinessImpl;
import columbarium.business.impl.EmployeeBusinessImpl;
import columbarium.business.impl.FloorBusinessImpl;
import columbarium.business.impl.ItemBusinessImpl;
import columbarium.business.impl.PackageBusinessImpl;
import columbarium.business.impl.RequirementBusinessImpl;
import columbarium.business.impl.ServiceBusinessImpl;
import columbarium.business.impl.UnitBusinessImpl;
import columbarium.dao.BlockRepository;
import columbarium.dao.BuildingRepository;
import columbarium.dao.ConnectionManager;
import columbarium.dao.EmployeeRepository;
import columbarium.dao.FloorRepository;
import columbarium.dao.ItemRepository;
import columbarium.dao.PackageRepository;
import columbarium.dao.RequirementRepository;
import columbarium.dao.ServiceRepository;
import columbarium.dao.UnitRepository;
import columbarium.dao.mybatis.MybatisBlockRepository;
import columbarium.dao.mybatis.MybatisBuildingRepository;
import columbarium.dao.mybatis.MybatisConnectionManager;
import columbarium.dao.mybatis.MybatisEmployeeRepository;
import columbarium.dao.mybatis.MybatisFloorRepository;
import columbarium.dao.mybatis.MybatisItemRepository;
import columbarium.dao.mybatis.MybatisPackageRepository;
import columbarium.dao.mybatis.MybatisRequirementRepository;
import columbarium.dao.mybatis.MybatisServiceRepository;
import columbarium.dao.mybatis.MybatisUnitRepository;
import columbarium.service.BlockService;
import columbarium.service.BuildingService;
import columbarium.service.EmployeeService;
import columbarium.service.FloorService;
import columbarium.service.ItemService;
import columbarium.service.ServiceService;
import columbarium.service.UnitService;
import columbarium.service.PackageService;
import columbarium.service.RequirementService;
import columbarium.service.impl.BlockServiceImpl;
import columbarium.service.impl.BuildingServiceImpl;
import columbarium.service.impl.EmployeeServiceImpl;
import columbarium.service.impl.FloorServiceImpl;
import columbarium.service.impl.ItemServiceImpl;
import columbarium.service.impl.PackageServiceImpl;
import columbarium.service.impl.RequirementServiceImpl;
import columbarium.service.impl.ServiceServiceImpl;
import columbarium.service.impl.UnitServiceImpl;

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
			
			//Requirement
			RequirementRepository requirementRepository =
					new MybatisRequirementRepository((MybatisConnectionManager)connectionManager);
			RequirementBusiness requirementBusiness = new RequirementBusinessImpl();
			((RequirementBusinessImpl)requirementBusiness).setRequirementRepository(requirementRepository);
			RequirementService requirementService = new RequirementServiceImpl();
			((RequirementServiceImpl)requirementService).setRequirementBusiness(requirementBusiness);
			((RequirementServiceImpl)requirementService).setRequirementRepository(requirementRepository);
			servletContext.setAttribute("requirementService", requirementService);
			
			//Building
			BuildingRepository buildingRepository =
					new MybatisBuildingRepository((MybatisConnectionManager)connectionManager);
			BuildingBusiness buildingBusiness = new BuildingBusinessImpl();
			((BuildingBusinessImpl)buildingBusiness).setBuildingRepository(buildingRepository);
			BuildingService buildingService = new BuildingServiceImpl();
			((BuildingServiceImpl)buildingService).setBuildingBusiness(buildingBusiness);
			((BuildingServiceImpl)buildingService).setBuildingRepository(buildingRepository);
			servletContext.setAttribute("buildingService", buildingService);
			
			//Floor
			FloorRepository floorRepository =
					new MybatisFloorRepository((MybatisConnectionManager)connectionManager);
			FloorBusiness floorBusiness = new FloorBusinessImpl();
			((FloorBusinessImpl)floorBusiness).setFloorRepository(floorRepository);
			FloorService floorService = new FloorServiceImpl();
			((FloorServiceImpl)floorService).setFloorBusiness(floorBusiness);
			((FloorServiceImpl)floorService).setFloorRepository(floorRepository);
			servletContext.setAttribute("floorService", floorService);
			
			//Block
			BlockRepository blockRepository =
					new MybatisBlockRepository((MybatisConnectionManager)connectionManager);
			BlockBusiness blockBusiness = new BlockBusinessImpl();
			((BlockBusinessImpl)blockBusiness).setBlockRepository(blockRepository);
			BlockService blockService = new BlockServiceImpl();
			((BlockServiceImpl)blockService).setBlockBusiness(blockBusiness);
			((BlockServiceImpl)blockService).setBlockRepository(blockRepository);
			servletContext.setAttribute("blockService", blockService);
			
			//Unit
			UnitRepository unitRepository =
					new MybatisUnitRepository((MybatisConnectionManager)connectionManager);
			UnitBusiness unitBusiness = new UnitBusinessImpl();
			((UnitBusinessImpl)unitBusiness).setUnitRepository(unitRepository);
			UnitService unitService = new UnitServiceImpl();
			((UnitServiceImpl)unitService).setUnitBusiness(unitBusiness);
			((UnitServiceImpl)unitService).setUnitRepository(unitRepository);
			servletContext.setAttribute("unitService", unitService);
			
			System.out.println("Context Listener initialized...");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}

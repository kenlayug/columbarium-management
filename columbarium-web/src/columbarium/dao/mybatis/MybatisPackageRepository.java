package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.PackageRepository;
import columbarium.dao.mybatis.mappers.PackageMapper;
import columbarium.model.Item;
import columbarium.model.Package;
import columbarium.model.PackageItem;
import columbarium.model.PackageService;
import columbarium.model.Service;

public class MybatisPackageRepository extends MybatisClient implements PackageRepository{

	public MybatisPackageRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createPackage(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.checkIfExisting(packageTo) > 0){
				return "failed-existing";
			}
			packageMapper.savePackage(packageTo);
			packageTo.setPackageId(packageMapper.getPackageId(packageTo));
			for (Service service : packageTo.getServiceList()) {
				PackageService packageService = new PackageService();
				packageService.setPackageId(packageTo.getPackageId());
				packageService.setService(service);
				packageMapper.addServiceToPackage(packageService);
			}
			for (Item item : packageTo.getItemList()) {
				PackageItem packageItem = new PackageItem();
				packageItem.setPackageId(packageTo.getPackageId());
				packageItem.setItem(item);
				packageMapper.addItemToPackage(packageItem);
			}
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public Package searchPackage(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.checkIfExisting(packageTo) > 0){
				Package package1 = packageMapper.getPackage(packageTo);
				package1.setItemList(packageMapper.getItemsOfPackage(packageTo));
				package1.setServiceList(packageMapper.getServicesOfPackage(packageTo));
				return package1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String updatePackage(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.checkIfExisting(packageTo) <= 0){
				return "failed-does-not-exist";
			}
			packageMapper.updatePackage(packageTo);
			updatePackageServiceAndItem(packageTo);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public String deactivatePackage(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.checkIfExisting(packageTo) <= 0){
				return "failed-does-not-exist";
			}
			packageMapper.deactivatePackage(packageTo);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<Package> getAllPackage() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Package>packageList;
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.countAllPackage() > 0){
				packageList = packageMapper.getAllPackage();
				System.out.println(packageList.size());
				for (Package packageTo : packageList) {
					System.out.println(packageTo.getDblPrice());
					packageTo.setItemList(packageMapper.getItemsOfPackage(packageTo));
					packageTo.setServiceList(packageMapper.getServicesOfPackage(packageTo));
				}
				return packageList;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public List<Package> searchPackageByName(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			return packageMapper.searchPackageList(packageTo);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public int getLastPackageId() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.countAllPackage() != 0){
				return packageMapper.getLastPackageId();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return 0;
	}

	@Override
	public String updatePackageServiceAndItem(Package packageTo) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			PackageMapper packageMapper = sqlSession.getMapper(PackageMapper.class);
			if (packageMapper.checkIfExisting(packageTo) > 0){
				
				for (Service service : packageTo.getServiceList()) {
					
					PackageService packageService =
							new PackageService(packageMapper.getPackageId(packageTo), service);
					if (packageMapper.checkPackageIfExistingService(packageService) == 0){
						packageMapper.addServiceToPackage(packageService);
					}
					
				}
				
				for (Item item : packageTo.getItemList()) {
					
					PackageItem packageItem =
							new PackageItem(packageMapper.getPackageId(packageTo), item);
					if (packageMapper.checkPackageIfExistingItem(packageItem) == 0){
						packageMapper.addItemToPackage(packageItem);
					}
					
				}

				sqlSession.commit();
				return "success";
				
			}
			return "failed-does-not-exist";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

}

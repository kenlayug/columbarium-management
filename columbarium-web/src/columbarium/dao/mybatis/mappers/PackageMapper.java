package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Item;
import columbarium.model.Package;
import columbarium.model.PackageItem;
import columbarium.model.PackageService;
import columbarium.model.Service;

public interface PackageMapper {

	public void savePackage(Package packageTo);
	public Package getPackage(Package packageTo);
	public void updatePackage(Package packageTo);
	public void deactivatePackage(Package packageTo);
	
	public Integer checkIfExisting(Package packageTo);
	
	public void addServiceToPackage(PackageService packageService);
	public void addItemToPackage(PackageItem packageItem);
	public void removeServiceFromPackage(PackageService packageService);
	public void removeItemFromPackage(PackageItem packageItem);
	public void upItemToPackage(PackageItem packageItem);
	public void upServiceToPackage(PackageService packageService);
	
	public List<Package>getAllPackage();
	public int countAllPackage();
	public List<Package>searchPackageList(Package packageTo);
	
	public int getLastPackageId();
	public int getPackageId(Package packageTo);
	
	public int checkPackageIfExistingService(PackageService packageService);
	public int checkPackageIfExistingItem(PackageItem packageItem);
	
	public List<Item>getItemsOfPackage(Package packageTo);
	public List<Service>getServicesOfPackage(Package packageTo);
	
}

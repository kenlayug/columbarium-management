package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Package;
import columbarium.model.PackageItem;
import columbarium.model.PackageService;

public interface PackageMapper {

	public void savePackage(Package packageTo);
	public Package getPackage(Package packageTo);
	public void updatePackage(Package packageTo);
	public void deactivatePackage(Package packageTo);
	
	public Integer checkIfExisting(Package packageTo);
	
	public void addServiceToPackage(PackageService packageService);
	public void addItemToPackage(PackageItem packageItem);
	
	public List<Package>getAllPackage();
	public int countAllPackage();
	public List<Package>searchPackageList(Package packageTo);
	
	public int getLastPackageId();
	public int getPackageId(Package packageTo);
	
	public int checkPackageIfExistingService(PackageService packageService);
	public int checkPackageIfExistingItem(PackageItem packageItem);
	
}

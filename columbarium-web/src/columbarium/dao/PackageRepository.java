package columbarium.dao;

import java.util.List;

import columbarium.model.Package;

public interface PackageRepository {

	public String createPackage(Package packageTo);
	public Package searchPackage(Package packageTo);
	public String updatePackage(Package packageTo);
	public String deactivatePackage(Package packageTo);
	
	public List<Package>getAllPackage();
	public List<Package>searchPackageByName(Package packageTo);
	
	public int getLastPackageId();
	
	public String updatePackageServiceAndItem(Package packageTo);
	
}

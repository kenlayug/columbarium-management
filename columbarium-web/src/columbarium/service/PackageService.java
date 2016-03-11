package columbarium.service;

import java.util.List;

import columbarium.model.Package;

public interface PackageService {

	public String createPackage(Package packageTo);
	public Package searchPackage(int packageId);
	public String updatePackage(Package packageTo);
	public String deactivatePackage(Package packageTo);
	
	public List<Package>getAllPackage();
	public List<Package>searchPackageByName(Package packageTo);
	
	public int getNewPackageId();
	
}

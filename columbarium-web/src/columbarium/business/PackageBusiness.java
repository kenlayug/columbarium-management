package columbarium.business;

import columbarium.model.Package;

public interface PackageBusiness {

	public int getNewPackageId();
	public String createPackage(Package packageTo);
	public Package getPackage(int packageId);
	public String deactivatePackage(int packageId);
	
}

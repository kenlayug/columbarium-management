package columbarium.business.impl;

import columbarium.business.PackageBusiness;
import columbarium.dao.PackageRepository;
import columbarium.model.Package;

public class PackageBusinessImpl implements PackageBusiness{

	public PackageRepository packageRepository;
	
	public void setPackageRepository(PackageRepository packageRepository){
		this.packageRepository = packageRepository;
	}
	
	@Override
	public int getNewPackageId() {
		// TODO Auto-generated method stub
		return packageRepository.getLastPackageId() + 1;
	}

	@Override
	public String createPackage(Package packageTo) {

		if (packageTo.getStrPackageName().length() == 0 ||
				packageTo.getStrPackageName() == null){
			return "input";
		}
		if (Double.parseDouble(packageTo.getDblPrice()) == 0){
			return "input";
		}
		if (packageTo.getServiceList() == null && packageTo.getItemList() == null){
			return "input";
		}
		return packageRepository.createPackage(packageTo);
	}

	@Override
	public Package getPackage(int packageId) {
		Package packageTo = new Package();
		packageTo.setPackageId(packageId);
		return packageRepository.searchPackage(packageTo);
	}

	@Override
	public String deactivatePackage(int packageId) {
		Package packageTo = new Package();
		packageTo.setPackageId(packageId);
		return packageRepository.deactivatePackage(packageTo);
	}

}

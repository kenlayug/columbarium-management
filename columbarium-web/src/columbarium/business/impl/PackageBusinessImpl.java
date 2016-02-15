package columbarium.business.impl;

import columbarium.business.PackageBusiness;
import columbarium.dao.PackageRepository;

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

}

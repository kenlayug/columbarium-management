package columbarium.service.impl;

import java.util.List;

import columbarium.business.PackageBusiness;
import columbarium.dao.PackageRepository;
import columbarium.model.Package;
import columbarium.service.PackageService;

public class PackageServiceImpl implements PackageService{

	private PackageRepository packageRepository;
	private PackageBusiness packageBusiness;
	
	public void setPackageBusiness(PackageBusiness packageBusiness){
		this.packageBusiness = packageBusiness;
	}
	
	public void setPackageRepository(PackageRepository packageRepository){
		this.packageRepository = packageRepository;
	}
	
	@Override
	public String createPackage(Package packageTo) {
		// TODO Auto-generated method stub
		return packageBusiness.createPackage(packageTo);
	}

	@Override
	public Package searchPackage(int packageId) {
		// TODO Auto-generated method stub
		return packageBusiness.getPackage(packageId);
	}

	@Override
	public String updatePackage(Package packageTo) {
		// TODO Auto-generated method stub
		return packageRepository.updatePackage(packageTo);
	}

	@Override
	public String deactivatePackage(int packageId) {
		// TODO Auto-generated method stub
		return packageBusiness.deactivatePackage(packageId);
	}

	@Override
	public List<Package> getAllPackage() {
		// TODO Auto-generated method stub
		return packageRepository.getAllPackage();
	}

	@Override
	public List<Package> searchPackageByName(Package packageTo) {
		// TODO Auto-generated method stub
		return packageRepository.searchPackageByName(packageTo);
	}

	@Override
	public int getNewPackageId() {
		// TODO Auto-generated method stub
		return packageBusiness.getNewPackageId();
	}

}

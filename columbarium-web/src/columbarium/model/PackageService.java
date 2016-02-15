package columbarium.model;

public class PackageService{

	private int packageId;
	private Service service;

	public PackageService(){
		
	}
	public PackageService(int packageId, Service service){
		this.packageId = packageId;
		this.service = service;
	}
	
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	
}

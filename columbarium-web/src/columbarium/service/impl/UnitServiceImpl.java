package columbarium.service.impl;

import columbarium.business.UnitBusiness;
import columbarium.dao.UnitRepository;
import columbarium.model.Unit;
import columbarium.service.UnitService;

public class UnitServiceImpl implements UnitService{

	private UnitBusiness									unitBusiness;
	private UnitRepository									unitRepository;
	
	public void setUnitBusiness(UnitBusiness unitBusiness){
		this.unitBusiness = unitBusiness;
	}
	
	public void setUnitRepository(UnitRepository unitRepository){
		this.unitRepository = unitRepository;
	}
	
	@Override
	public Unit getUnitById(int unitId) {
		return unitBusiness.getUnitById(unitId);
	}

	@Override
	public String deactivateUnit(int unitId) {
		return unitBusiness.deactivateUnit(unitId);
	}

	@Override
	public String activateUnit(int unitId) {
		return unitBusiness.activateUnit(unitId);
	}

}

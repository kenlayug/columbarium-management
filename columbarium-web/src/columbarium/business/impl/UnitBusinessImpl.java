package columbarium.business.impl;

import columbarium.business.UnitBusiness;
import columbarium.dao.UnitRepository;
import columbarium.model.Unit;

public class UnitBusinessImpl implements UnitBusiness{

	private UnitRepository unitRepository;
	
	public void setUnitRepository(UnitRepository unitRepository){
		this.unitRepository = unitRepository;
	}
	
	@Override
	public Unit getUnitById(int unitId) {
		Unit unit = new Unit();
		unit.setUnitId(unitId);
		return unitRepository.getUnitById(unit);
	}

	@Override
	public String deactivateUnit(int unitId) {
		Unit unit = new Unit();
		unit.setUnitId(unitId);
		return unitRepository.deactivateUnit(unit);
	}

	@Override
	public String activateUnit(int unitId) {
		Unit unit = new Unit();
		unit.setUnitId(unitId);
		return unitRepository.activateUnit(unit);
	}

}

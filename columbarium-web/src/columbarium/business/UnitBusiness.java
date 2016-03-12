package columbarium.business;

import columbarium.model.Unit;

public interface UnitBusiness {

	public Unit									getUnitById(int unitId);
	public String								deactivateUnit(int unitId);
	public String								activateUnit(int unitId);
	
}

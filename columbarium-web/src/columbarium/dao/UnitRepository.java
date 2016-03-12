package columbarium.dao;

import columbarium.model.Unit;

public interface UnitRepository {

	public Unit						getUnitById(Unit unit);
	public String					deactivateUnit(Unit unit);
	public String					activateUnit(Unit unit);
	
}

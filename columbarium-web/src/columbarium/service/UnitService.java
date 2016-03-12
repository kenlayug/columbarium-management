package columbarium.service;

import columbarium.model.Unit;

public interface UnitService {

	public Unit							getUnitById(int unitId);
	public String						deactivateUnit(int unitId);
	public String						activateUnit(int unitId);
	
}

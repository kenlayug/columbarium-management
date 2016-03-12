package columbarium.dao.mybatis.mappers;

import columbarium.model.Unit;

public interface UnitMapper {

	public Unit								getUnitById(Unit unit);
	public void								deactivateUnit(Unit unit);
	public void								activateUnit(Unit unit);
	
}

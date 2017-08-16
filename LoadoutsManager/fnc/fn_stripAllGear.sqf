/*
	author: ARTERC

	description:
	Strips all gear from a unit.

	parameters:
	_this select 0: unit (Object)

	returns: true if finished execution
*/

_unit = _this;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;


/*
	author: ARTERC

	description:
	Saves current unit loadout.

	parameters:
	_this select 0: unit (Object)

	returns: true if finished execution
*/

if (!local _this) exitWith {};
_this setVariable["ARTR_unitLoadout",getUnitLoadout _this, true];
diag_log format ["Loadout saved. Unit: %1, Player: %2, Loadout: %3", _this, player, getUnitLoadout _this];
true
/*
	author: ARTERC

	description:
	Equips unit with a loadout based on his unitClassname.

	parameters:
	_this select 0 (Optional): unit (Object)

	returns: true if finished execution
*/

params[["_unit", player]];
private ["_units", "_factionConfigs", "_unitFound", "_unitClassname", "_roleName", "_unitFound", "_factionConfig",
"_factionName", "_roleConfig"];

_factionConfigs = "true" configClasses(getMissionConfig "ARTR_Loadouts");

diag_log format ["Unit: %1", _unit];
if (!local _unit) exitWith {};
_unitFound = false;
{
    //if unit is found, then break current loop
    if (_unitFound) exitWith {};
    //a config entry of a faction
    _factionConfig = _x;
    //get a faction name
    _factionName = configName(_factionConfig);
    //roles config entry of a selected faction
    _rolesConfig = _factionConfig >> "Roles";
    //an array of role config classes
    _roleConfigs = "true" configClasses(_rolesConfig);
    {
        //a config entry of a role
        _roleConfig = _x;
        //get role name
        _roleName = configName(_roleConfig);
        diag_log format ["RoleName: %1", _roleName];
        //extracting unitClassname of a unit from config
        _unitClassname = [_roleConfig, "unitClassname"] call BIS_fnc_returnConfigEntry;
        //if unitClassnames match, then equip loadout and break loops for current unit
        if (typeof _unit == _unitClassname) exitWith {
            _unitFound = true;
            [_unit, _roleName, _factionName] call ARTR_fnc_equipLoadout;
        };
    } forEach _roleConfigs;
} forEach _factionConfigs;

true

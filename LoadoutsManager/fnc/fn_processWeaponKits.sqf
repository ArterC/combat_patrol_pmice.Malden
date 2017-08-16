/*
	author: ARTERC

	description:
	Helper function for fnc_equipLoadout, processes weapon-based kits.

	parameters:
	_this select 0: unit (Object)
	_this select 1: roleConfigEntry (Config)
	_this select 2: kitsConfig (Config)
	_this select 3: kitType (String)

	returns: true if finished execution
*/

params ["_unit", "_roleConfigEntry", "_kitsConfig", "_kitType"];
private ["_kit", "_weapon", "_attachments"];

_kitName = _roleConfigEntry call BIS_fnc_getCfgData;
diag_log format ["KitName: %1", _kitName];

switch(_kitType) do {
    case "primaryWeapon" : {
        _kit = _kitsConfig >> "PrimaryWeapons" >> _kitName;
        diag_log format ["KitWeapon: %1", _kit];
    };
    case "secondaryWeapon" : {
        _kit = _kitsConfig >> "SecondaryWeapons" >> _kitName;
    };
    case "launcher" : {
        _kit = _kitsConfig >> "Launchers" >> _kitName;
    };
};

_weapon = [_kit, "weapon"] call BIS_fnc_returnConfigEntry;
_unit addWeapon _weapon;
_attachments = [_kit, "attachments"] call BIS_fnc_returnConfigEntry;
diag_log format ["Weapon: %1", _weapon];

switch(_kitType) do {
    case "primaryWeapon" : {
        {
            _unit addPrimaryWeaponItem _x;
        } forEach _attachments;
    };
    case "secondaryWeapon" : {
        {
            _unit addHandgunItem _x;
        } forEach _attachments;
    };
    case "launcher" : {
        {
            _unit addSecondaryWeaponItem _x;
        } forEach _attachments;
    };
};

true
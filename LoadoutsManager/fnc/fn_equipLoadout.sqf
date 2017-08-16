/*
	author: ARTERC

	description:
	Assigns requested loadout to a unit.

	parameters:
	_this select 0: unit (Object)
	_this select 1 (Optional): role classname (String)
	_this select 2 (Optional): faction classname (String)

	returns: true if finished execution
*/

params[["_unit", player], "_role", "_faction"];
private["_faction", "_role", "_kitsConfig", "_roleConfig", "_items", "_kitName", "_kit", "_item"];

if (!local _unit) exitWith {};

if (isDedicated) exitWith{};
//waitUntil{ !isNull player };

_unit call ARTR_fnc_stripAllGear;

if(!isNil "_role") then {
    //_config = configProperties [missionconfigfile >> "ARTR_Loadouts" >> "OPF_HA" >> "Kits" >> "Backpacks" >> "MedicBag"];

    _roleConfig = missionConfigFile >> "ARTR_Loadouts" >> _faction >> "Roles" >> _role;
    _kitsConfig = missionConfigFile >> "ARTR_Loadouts" >> _faction >> "Kits";

    //Using configProperties to access possible inherited entries from extended role
    _roleConfigEntries = configProperties [_roleConfig];

    {
        switch(configName (_x)) do {
            case "primaryWeapon" : {
                [_unit, _x, _kitsConfig, "primaryWeapon"] call ARTR_fnc_processWeaponKits;
            };
            case "secondaryWeapon" : {
                [_unit, _x, _kitsConfig, "secondaryWeapon"] call ARTR_fnc_processWeaponKits;
            };
            case "launcher" : {
                [_unit, _x, _kitsConfig, "launcher"] call ARTR_fnc_processWeaponKits;
            };
            case "uniform" : {
                [_unit, _x, _kitsConfig, "uniform"] call ARTR_fnc_processContainerKits;
            };
            case "vest" : {
                [_unit, _x, _kitsConfig, "vest"] call ARTR_fnc_processContainerKits;
            };
            case "backpack" : {
                [_unit, _x, _kitsConfig, "backpack"] call ARTR_fnc_processContainerKits;
            };
            case "items" : {
                _kitName = _x call BIS_fnc_getCfgData;
                _kit = _kitsConfig >> "Items" >> _kitName;

                _kitConfigEntries = configProperties [_kit];

                {
                    switch(configName (_x)) do {
                        case "headgear" : {
                            _item = [_kit, "headgear"] call BIS_fnc_returnConfigEntry;
                            _unit addHeadgear _item;
                        };
                        case "goggles" : {
                            _item = [_kit, "goggles"] call BIS_fnc_returnConfigEntry;
                            _unit addGoggles _item;
                        };
                        case "items" : {
                            _items = [_kit, "items"] call BIS_fnc_returnConfigEntry;
                            {_unit linkItem _x;} forEach _items;
                        };
                    };
                } forEach _kitConfigEntries;
            };
        };
    } forEach _roleConfigEntries;

    _unit call ARTR_fnc_saveLoadout;

} else {
	_unit setUnitLoadout(_unit getVariable["ARTR_unitLoadout",[]]);
};

true
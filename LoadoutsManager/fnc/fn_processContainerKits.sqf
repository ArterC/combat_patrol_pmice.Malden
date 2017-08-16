/*
	author: ARTERC

	description:
	Helper function for fnc_equipLoadout, processes container-based kits.

	parameters:
	_this select 0: unit (Object)
	_this select 1: roleConfigEntry (Config)
	_this select 2: kitsConfig (Config)
	_this select 3: kitType (String)

	returns: true if finished execution
*/

params ["_unit", "_roleConfigEntry", "_kitsConfig", "_kitType"];
private ["_kit", "_container", "_kitName", "_arraySize", "_contents", "_i", "_j", "_item", "_nextItem"];

_kitName = _roleConfigEntry call BIS_fnc_getCfgData;

//Switch doesnt work well, _contents doesnt load outside of switch block. If doesnt work too. Declare vars before?
switch(_kitType) do {
    case "uniform" : {
        _kit = _kitsConfig >> "Uniforms" >> _kitName;
        _container = [_kit, "container"] call BIS_fnc_returnConfigEntry;
        _unit forceAddUniform _container;
        diag_log format ["Uniform: %1", _container];
    };
    case "vest" : {
        _kit = _kitsConfig >> "Vests" >> _kitName;
        _container = [_kit, "container"] call BIS_fnc_returnConfigEntry;
        _unit addVest _container;
        diag_log format ["Vest: %1", _container];
    };
    case "backpack" : {
        _kit = _kitsConfig >> "Backpacks" >> _kitName;
        _container = [_kit, "container"] call BIS_fnc_returnConfigEntry;
        _unit addBackpack _container;
        diag_log format ["Backpack: %1", _container];
    };
};

_contents = [_kit, "contents"] call BIS_fnc_returnConfigEntry;

if (!isNil "_contents") then {
    diag_log format ["Contents: %1", _contents];

    _arraySize = count _contents;
    diag_log format ["ArraySize: %1", _arraySize];
    //Do cycle for every item in _contents array
    for "_i" from 0 to _arraySize - 1 do {
        _amount = 1;
        //Select item from array
        _item = _contents select _i;
        diag_log format ["Item: %1", _item];
        //Check if array end is not yet reached
        if(_i < (_arraySize - 1)) then {
            //Select next item from array
            _nextItem = _contents select (_i + 1);
            diag_log format ["nextItem: %1", _nextItem];
            //If next item is scalar then its our amount of items, add that amount to container
            //if not - default value is 1, add only 1 item
            if(typeName _nextItem == "SCALAR") then {
                _amount = _nextItem;
                diag_log format ["New Amount: %1", _amount];
                //increment _i variable, so we can bypass it
                _i=_i+1;
            };
        };
        //Add required amount of items to container
        for "_j" from 1 to _amount do {
            diag_log format ["Adding Item: %1", _item];
            switch(_kitType) do {
                case "uniform" : {
                    _unit addItemToUniform _item;
                };
                case "vest" : {
                    _unit addItemToVest _item;
                };
                case "backpack" : {
                    _unit addItemToBackpack _item;
                };
            };
        };
    };
};

true
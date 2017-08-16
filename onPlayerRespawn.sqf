_unit = _this select 0;
_oldUnit = _this select 1;
_loadout = _unit getVariable["ARTR_unitLoadout",[]];
_unit setUnitLoadout(_loadout);
diag_log format ["Player respawned. Loadout given. Unit: %1, Player: %2, OldUnit: %3, Loadout: %4", _unit, player, _oldUnit, _loadout];
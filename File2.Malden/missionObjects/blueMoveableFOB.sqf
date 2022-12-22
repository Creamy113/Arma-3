if (team isEqualto 2) then {
  player addAction ["Create FOB",
  {
    _amountSupp = player getVariable "suppAmount";
        if (_amountSupp >= 500) then
        {
          hint "You have created a FOB on your position!";
          _blueFOB = "VirtualReammoBox_camonet_F" createVehicle position player;
          [player, _blueFOB, "FOB Spawn"] call BIS_fnc_addRespawnPosition;
          _totalNew = _amountSupp - 500;
          player setVariable ["suppAmount", _totalNew, false];
          _markerBlueFOB = createMarker ["markerBlueFOB", _blueFOB];
          _markerBlueFOB setMarkerType "loc_move";
          _markerBlueFOB setMarkerText " FOB";
          _markerBlueFOB setMarkerColor "ColorWhite";
          _blueFOB addAction ["Open Loadout Menu", {createDialog "LoadoutMenu";},nil , 1.5, true, false, "", "true", 15];

          _blueFOB addAction ["Destroy FOB",
          {
              [_this select 3, 1] call BIS_fnc_removeRespawnPosition;
              _amountSupp = player getVariable "suppAmount";
              hint "You have destroyed the FOB! +500 Supplies";
              deleteVehicle (_this select 3);
              _totalNew = _amountSupp + 500;
              player setVariable ["suppAmount", _totalNew, true];
          }, _blueFOB, 2, true, false, "", "true", 5];
        } else
        {
          hint "You do not have enough supplies to create a FOB!";
        };
  }];
};

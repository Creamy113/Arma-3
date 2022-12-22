if (team isEqualto 1) then {
  player addAction ["Create FOB",
  {
    _amountSupp = player getVariable "suppAmount";
        if (_amountSupp >= 500) then
        {
          hint "You have created a FOB on your position!";
          _redFOB = "VirtualReammoBox_camonet_F" createVehicle position player;
          [player, _redFOB, "FOB Spawn"] call BIS_fnc_addRespawnPosition;
          _totalNew = _amountSupp - 500;
          player setVariable ["suppAmount", _totalNew, false];
          _markerRedFOB = createMarker ["markerRedFOB", _redFOB];
          _markerRedFOB setMarkerType "loc_move";
          _markerRedFOB setMarkerText " FOB";
          _markerRedFOB setMarkerColor "ColorWhite";
          _redFOB addAction ["Open Loadout Menu", {createDialog "LoadoutMenu";},nil , 1.5, true, false, "", "true", 15];

          _redFOB addAction ["Destroy FOB",
          {
              [_this select 3, 1] call BIS_fnc_removeRespawnPosition;
              _amountSupp = player getVariable "suppAmount";
              hint "You have destroyed the FOB! +500 Supplies";
              deleteVehicle (_this select 3);
              _totalNew = _amountSupp + 500;
              player setVariable ["suppAmount", _totalNew, true];
          }, _redFOB, 2, true, false, "", "true", 5];
        } else
        {
          hint "You do not have enough supplies to create a FOB!";
        };
  }];
};

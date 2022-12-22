_baseBlue = getMarkerPos "baseBlue";
_dir = markerDir "baseBlue";

_baseBlueHQ = "";

_baseBlueCreate =
{
  if ((_dir < 315 && _dir > 225) or (_dir <= 225 && _dir >= 135)) then
  {
    _baseBlueHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseBlue select 0) +15, (_baseBlue select 1) +25, _baseBlue select 2];
    _baseBlueHQ setDir _dir;
  };

  if (_dir >= 315 or _dir <= 45) then
  {
    _baseBlueHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseBlue select 0) +25 , (_baseBlue select 1) -15, _baseBlue select 2];
    _baseBlueHQ setDir _dir;
  };
  if (_dir < 135 && _dir > 45) then
  {
    _baseBlueHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseBlue select 0) -15 , (_baseBlue select 1) +25, _baseBlue select 2];
    _baseBlueHQ setDir _dir;
  };
  _markerBlueHQ = createMarker ["markerBlueHQ", _baseBlue];
  _markerBlueHQ setMarkerType "flag_USA";
  _markerBlueHQ setMarkerText " Blue Base";
};
call _baseBlueCreate;

if (team isEqualto 2) then
{
  _baseBlueHQ addAction ["Open Loadout Menu", {createDialog "LoadoutMenu";},nil , 1.5, true, false, "", "true", 15];
  _baseBlueHQ setVariable ["suppAmount", 2000, true];

  [_baseBlueHQ, ["Grab Supplies (250)",
    {
      _check1 = (_this select 3) getVariable "suppAmount";
      if (_check1 > 0) then
      {
        _total = (_this select 3) getVariable "suppAmount";
        _totalNew = _total - 250;
        (_this select 3) setVariable ["suppAmount", _totalNew, true];
        _ptotal = player getVariable "suppAmount";
        _ptotal = _ptotal + 250;
        player setVariable ["suppAmount", _ptotal, false];
        systemChat str _ptotal;
        hint format ["The supplies left in base are %1!", _totalNew];
      } else
      {
          hint "The base is empty on supplies!";
      };

    }, _baseBlueHQ, 2, true, false, "", "true", 15]] remoteExec ["AddAction", 0, true];
};

[_baseRedHQ, _baseBlueHQ] Call compile preprocessFileLineNumbers "respawn&Obj.sqf";

_baseRed = getMarkerPos "baseRed";
_dir = markerDir "baseRed";

_baseRedHQ = "";

_baseRedCreate =
{
  if ((_dir < 315 && _dir > 225) or (_dir <= 225 && _dir >= 135)) then
  {
    _baseRedHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseRed select 0) +15, (_baseRed select 1) +25, _baseRed select 2];
    _baseRedHQ setDir _dir;
  };

  if (_dir >= 315 or _dir <= 45) then
  {
    _baseRedHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseRed select 0) +25 , (_baseRed select 1) -15, _baseRed select 2];
    _baseRedHQ setDir _dir;
  };
  if (_dir < 135 && _dir > 45) then
  {
    _baseRedHQ = "Land_Cargo_House_V1_F" createVehicle [(_baseRed select 0) -15 , (_baseRed select 1) +25, _baseRed select 2];
    _baseRedHQ setDir _dir;
  };
  _markerRedHQ = createMarker ["markerRedHQ", _baseRed];
  _markerRedHQ setMarkerType "flag_Russia";
  _markerRedHQ setMarkerText " Red Base";
};
call _baseRedCreate;

if (team isEqualto 1) then
{
  _baseRedHQ addAction ["Open Loadout Menu", {createDialog "LoadoutMenu";},nil , 1.5, true, false, "", "true", 15];
  _baseRedHQ setVariable ["suppAmount", 2000, true];

  [_baseRedHQ, ["Grab Supplies (250)",
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

    }, _baseRedHQ, 2, true, false, "", "true", 15]] remoteExec ["AddAction", 0, true];
};

[_baseRedHQ] Call compile preprocessFileLineNumbers "missionObjects\blueBaseHQ.sqf";

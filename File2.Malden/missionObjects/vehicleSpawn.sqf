_vehRed = ["B_MRAP_01_F", "B_APC_WHEELED_01_cannon_F", "B_Truck_01_transport_F", "B_Truck_01_transport_F", "B_LSV_01_unarmed_F", "B_LSV_01_armed_F"];
// Modular. Can add as many/different veh as you want etc
{
  _baseRed = getMarkerPos "baseRed";
  _dir = markerDir "baseRed";
  _veh =  _x createVehicle [_baseRed select 0, _baseRed select 1, _baseRed select 2];
  _veh setDir _dir;
  if ((_dir < 135 && _dir > 45) or (_dir < 315 && _dir > 225)) then
  {
    "baseRed" setMarkerPos [_baseRed select 0, (_baseRed select 1) +10, _baseRed select 2];
  };
  if ((_dir >= 315 or _dir <= 45) or (_dir <= 225 && _dir >= 135))  then
  {
    "baseRed" setMarkerPos [(_baseRed select 0) +10, _baseRed select 1, _baseRed select 2];
  };
  sleep 0.3;
} forEach _vehRed;

deleteMarker "baseRed";

// Blue Side Vehicle Spawn

_vehBlue = ["B_MRAP_01_F", "B_APC_WHEELED_01_cannon_F", "B_Truck_01_transport_F", "B_Truck_01_transport_F", "B_LSV_01_unarmed_F", "B_LSV_01_armed_F"];

{
  _baseBlue = getMarkerPos "baseBlue";
  _dir = markerDir "baseBlue";
  _veh =  _x createVehicle [_baseBlue select 0, _baseBlue select 1, _baseBlue select 2];
  _veh setDir _dir;
  if ((_dir < 135 && _dir > 45) or (_dir < 315 && _dir > 225)) then
  {
    "baseBlue" setMarkerPos [_baseBlue select 0, (_baseBlue select 1) +10, _baseBlue select 2];
  };
  if ((_dir >= 315 or _dir <= 45) or (_dir <= 225 && _dir >= 135))  then
  {
    "baseBlue" setMarkerPos [(_baseBlue select 0) +10, _baseBlue select 1, _baseBlue select 2];
  };
  sleep 0.3;
} forEach _vehBlue;

deleteMarker "baseBlue";

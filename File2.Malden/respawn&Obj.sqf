if (team isEqualto 1) then
{
  [player, _baseRedHQ, "HQ Spawn"] call BIS_fnc_addRespawnPosition
} else
{
  [player, _baseBlueHQ, "HQ Spawn"] call BIS_fnc_addRespawnPosition
};

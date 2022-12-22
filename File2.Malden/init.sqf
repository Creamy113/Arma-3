// A quick summary! All you need is to play two markers of any kind with the variable name of baseRed and baseBlue.
// Then you angle the marker where you want the spawn to face and begin! Currently its like TDM with FOBs to set up
// respawn points for each team. Enjoy!

supp = 0;
player setVariable ["suppAmount", supp, false];

Call compile preprocessFileLineNumbers "missionObjects\redBaseHQ.sqf";
Call compile preprocessFileLineNumbers "missionObjects\vehicleSpawn.sqf";

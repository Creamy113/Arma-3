class LoadoutMenu
{
    idd = 3333;

    class controls
    {
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT START (by Old Man, v1.063, #Sibuti)
        ////////////////////////////////////////////////////////

        class LFrame: IGUIBack
        {
        	idc = 1800;
        	x = 0.319944 * safezoneW + safezoneX;
        	y = 0.28 * safezoneH + safezoneY;
        	w = 0.349823 * safezoneW;
        	h = 0.407 * safezoneH;
        };
        class LTitle: RscText
        {
        	idc = 1000;
        	text = "Loadout Menu"; //--- ToDo: Localize;
        	x = 0.325089 * safezoneW + safezoneX;
        	y = 0.291 * safezoneH + safezoneY;
        	w = 0.056589 * safezoneW;
        	h = 0.044 * safezoneH;
        };
        class LRifle: RscButton
        {
        	idc = 1600;
        	text = "Rifle Loadout"; //--- ToDo: Localize;
        	x = 0.335378 * safezoneW + safezoneX;
        	y = 0.357 * safezoneH + safezoneY;
        	w = 0.313812 * safezoneW;
        	h = 0.044 * safezoneH;
          Action = "player setUnitLoadout (missionConfigFile >> 'riflemanLoadout')";
        };
        class LAutorifleman: RscButton
        {
        	idc = 1601;
        	text = "Auto Rifleman Loadout"; //--- ToDo: Localize;
        	x = 0.335378 * safezoneW + safezoneX;
        	y = 0.412 * safezoneH + safezoneY;
        	w = 0.313812 * safezoneW;
        	h = 0.044 * safezoneH;
          Action = "player setUnitLoadout (missionConfigFile >> 'autoriflemanLoadout')";
        };
        class LMarksman: RscButton
        {
        	idc = 1602;
        	text = "Marksman Loadout"; //--- ToDo: Localize;
        	x = 0.335378 * safezoneW + safezoneX;
        	y = 0.467 * safezoneH + safezoneY;
        	w = 0.313812 * safezoneW;
        	h = 0.044 * safezoneH;
          Action = "player setUnitLoadout (missionConfigFile >> 'marksmanLoadout')";
        };
        class LLightAT: RscButton
        {
        	idc = 1603;
        	text = "Light AT Loadout"; //--- ToDo: Localize;
        	x = 0.335378 * safezoneW + safezoneX;
        	y = 0.522 * safezoneH + safezoneY;
        	w = 0.313812 * safezoneW;
        	h = 0.044 * safezoneH;
          Action = "player setUnitLoadout (missionConfigFile >> 'lightATLoadout')";
        };
        class LHeavyAT: RscButton
        {
        	idc = 1604;
        	text = "Heavy AT Loadout"; //--- ToDo: Localize;
        	x = 0.335378 * safezoneW + safezoneX;
        	y = 0.577 * safezoneH + safezoneY;
        	w = 0.313812 * safezoneW;
        	h = 0.044 * safezoneH;
          Action = "player setUnitLoadout (missionConfigFile >> 'heavyATLoadout')";
        };
        ////////////////////////////////////////////////////////
        // GUI EDITOR OUTPUT END
        ///////////////////////////////////////////////////////
    };
};

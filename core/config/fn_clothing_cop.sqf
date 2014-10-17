#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["U_B_Wetsuit",nil,0];
			_ret pushBack ["U_Rangemaster","Marshall Uniform",0];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["U_B_HeliPilotCoveralls","Pilot Uniform",nil,0];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn","Senior Uniform",nil,0];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_HelmetB_plain_mcamo","Combat Helmet",0];
			_ret pushBack ["H_Booniehat_mcamo","Boonie",0];
			_ret pushBack ["H_Cap_police","Cap",0];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Cap_blk","Black","Cap",0];
			_ret pushBack ["H_CrewHelmetHeli_B","Crew Helm",0];
			_ret pushBack ["H_PilotHelmetHeli_B","Pilot Helm",0];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0],
			["G_Diving",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt","RangeMaster",0];

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["V_PlateCarrier1_blk","PlateCarrier",0];
			_ret pushBack  ["V_RebreatherB","Re-breather",0];
			_ret pushBack ["V_TacVest_blk_POLICE","TacVest",0];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Bergen_sgg","Bergen",0],
			["B_Carryall_cbr","Carryall",0]
		];
	};
};

_ret;

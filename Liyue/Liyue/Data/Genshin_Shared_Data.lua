-- define SotS StatueOfTheSeven

include("GameCapabilities");

function GetSotSCount(iPlayerID, maxNum)
	local numSotS = 0;
	local pPlayer = Players[iPlayerID];
		local pPlayerCities = pPlayer:GetCities();
		local buildingSotS = GameInfo.Buildings["BUILDING_STATUE_OF_THE_SEVEN"];
		if (pPlayerCities ~= nil) then
			numSotS = 0
			for i, pCity in pPlayerCities:Members() do
				local pCityBuildings= pCity:GetBuildings();
				if (pCityBuildings:HasBuilding(buildingSotS.Index)) then
					if numSotS < maxNum then
						numSotS = numSotS + 1
					else
						return numSotS;
					end
				end
			end
		else
			numSotS = 0
		end
	return numSotS;
end

function OnTurnBegin_SotSReset()
	for i = 0, GameDefines.MAX_PLAYERS-1, 1 do
		local pPlayer = Players[i];
		if HasTrait("TRAIT_GENSHIN_BUILDING_STATUE_OF_THE_SEVEN", pPlayer:GetID()) then
			pPlayer:SetProperty("SotSHealCapUsed", 0);
		end
	end
end

function SotSAction(iPlayerID, iUnitID, PlotX, PlotY)		-- Core action code of the Statue of the Seven
	local pPlayer = Players[iPlayerID];
	local pCity = Cities.GetCityInPlot(PlotX, PlotY);
	local SotSHealCapUsed = pPlayer:GetProperty("SotSHealCapUsed");
	local SotSHealCapability = GetSotSCount(iPlayerID,6) * 25;
	if SotSHealCapUsed then
		if SotSHealCapUsed < SotSHealCapability then
			if (pCity ~= nil) then
				local pCityBuildings= pCity:GetBuildings();
				local buildingSotS = GameInfo.Buildings["BUILDING_STATUE_OF_THE_SEVEN"];
				if (pCityBuildings:HasBuilding(buildingSotS.Index)) then
					local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID);
					if (pUnit ~= nil and pUnit:GetDamage() ~= 0) then
						local healPoint = math.min( (SotSHealCapability-SotSHealCapUsed), pUnit:GetDamage());
						pUnit:SetDamage(pUnit:GetDamage() - healPoint);
						SotSHealCapUsed = SotSHealCapUsed + healPoint;
						Game.AddWorldViewText(0, "{LOC_TOOLTIP_STATUE_OF_THE_SEVEN}"..(SotSHealCapability-SotSHealCapUsed).."/"..SotSHealCapability, PlotX, PlotY);
						pPlayer:SetProperty("SotSHealCapUsed", SotSHealCapUsed);
						ExposedMembers.TEYVAT.PlaySoundTeyvat("Play_Statue_of_The_Seven_Heal");
					end
				end
			end
		end
	end
end



function OnUnitMoveComplete_SotSTrigger(iPlayerID, iUnitID, PlotX, PlotY)
	SotSAction(iPlayerID, iUnitID, PlotX, PlotY);
end

function OnUnitSelectionChanged_SotSTrigger(iPlayerID, iUnitID, hexI, hexJ, hexK, bSelected, bEditable)
	local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID);	-- Heal unit selected
	if (bSelected) then
		SotSAction(iPlayerID, iUnitID, pUnit:GetX(), pUnit:GetY());
	end
end

Events.TurnBegin.Add(OnTurnBegin_SotSReset);
Events.UnitMoveComplete.Add(OnUnitMoveComplete_SotSTrigger);
Events.UnitSelectionChanged.Add(OnUnitSelectionChanged_SotSTrigger);

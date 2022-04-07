function GetSotSCount(iPlayerID)
	local numSotS = 0;
	local pPlayer = Players[iPlayerID];
		local pPlayerCities = pPlayer:GetCities();
		local buildingSotS = GameInfo.Buildings["BUILDING_STATUE_OF_THE_SEVEN"];
		if (pPlayerCities ~= nil) then
			numSotS = 0
			for i, pCity in pPlayerCities:Members() do
				local pCityBuildings= pCity:GetBuildings();
				if (pCityBuildings:HasBuilding(buildingSotS.Index)) then
					numSotS = numSotS + 1
				end
			end
		else
			numSotS = 0
		end
	return numSotS;
end

function SotSActionUI(iPlayerID, iUnitID, PlotX, PlotY)		-- Core UI code of the Statue of the Seven
	local pPlayer = Players[iPlayerID];
	local pCity = Cities.GetCityInPlot(PlotX, PlotY);
	local SotSHealCapUsed = pPlayer:GetProperty("SotSHealCapUsed");
	local SotSHealCapability = GetSotSCount(iPlayerID) * 25;
	if SotSHealCapUsed then
		if SotSHealCapUsed < SotSHealCapability then
			if (pCity ~= nil) then
				local pCityBuildings= pCity:GetBuildings();
				local buildingSotS = GameInfo.Buildings["BUILDING_STATUE_OF_THE_SEVEN"];
				if (pCityBuildings:HasBuilding(buildingSotS.Index)) then
					local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID);
					if (pUnit ~= nil and pUnit:GetDamage() ~= 0) then
						if (PlayersVisibility[Game.GetLocalPlayer()]:IsVisible(PlotX,PlotY)) then
							UI.PlaySound("Play_Statue_of_The_Seven_Heal");
						end
					end
				end
			end
		end
	end
end

function OnUnitMoveComplete_SotSTriggerUI(iPlayerID, iUnitID, PlotX, PlotY)
	SotSActionUI(iPlayerID, iUnitID, PlotX, PlotY);
end

function OnUnitSelectionChanged_SotSTriggerUI(iPlayerID, iUnitID, hexI, hexJ, hexK, bSelected, bEditable)
	local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID);	-- Heal unit selected
	if (bSelected) then
		SotSActionUI(iPlayerID, iUnitID, pUnit:GetX(), pUnit:GetY());
	end
end

Events.UnitMoveComplete.Add(OnUnitMoveComplete_SotSTriggerUI);
Events.UnitSelectionChanged.Add(OnUnitSelectionChanged_SotSTriggerUI);
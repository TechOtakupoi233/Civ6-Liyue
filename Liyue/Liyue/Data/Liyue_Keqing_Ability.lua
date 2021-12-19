include("GameCapabilities");

function OnTurnBegin_ResetShift()					-- Every turn a unit can restore its movement once.
    for playerID = 0, GameDefines.MAX_PLAYERS-1, 1 do
        if (not HasTrait("TRAIT_LEADER_QIXING_YUHENG", playerID)) then return; end

		for i, pUnit in Players[playerID]:GetUnits():Members() do
			local unitType = GameInfo.Units[pUnit:GetType()].UnitType
            if (unitType == "UNIT_BUILDER" or unitType == "UNIT_MILITARY_ENGINEER") and (pUnit:GetAbility():GetAbilityCount("ABILITY_KEQING_EXTENDED_SHIFT") == 0) then
				pUnit:GetAbility():ChangeAbilityCount("ABILITY_KEQING_EXTENDED_SHIFT", 1)
			end
        end
    end
end

function OnCityMadePurchase_GrantMovement(playerID, cityID, iX, iY, purchaseType, objectType)
	if (purchaseType ~= EventSubTypes.UNIT) then return; end	-- Grant Unit Movement Immediately After Purchase
	if (not HasTrait("TRAIT_LEADER_QIXING_YUHENG", playerID)) then return; end

	for i, pUnit in ipairs(Units.GetUnitsInPlot(Map.GetPlot(iX,iY))) do
		if (pUnit:GetType() == objectType) then
			UnitManager.RestoreMovementToFormation(pUnit);
			UnitManager.RestoreUnitAttacks(pUnit);
			break;
		end
	end
end

function OnUnitOperationStarted_ExtendShift(playerID:number, unitID:number, operationID:number)
	if (operationID ~= UnitOperationTypes.BUILD_IMPROVEMENT and operationID ~= UnitOperationTypes.BUILD_IMPROVEMENT_ADJACENT and operationID ~= UnitOperationTypes.BUILD_ROUTE and operationID ~= UnitOperationTypes.CLEAR_CONTAMINATION and operationID ~= UnitOperationTypes.HARVEST_RESOURCE and operationID ~= UnitOperationTypes.PLANT_FOREST and operationID ~= UnitOperationTypes.REMOVE_FEATURE and operationID ~= UnitOperationTypes.REMOVE_IMPROVEMENT and operationID ~= UnitOperationTypes.REPAIR and operationID ~= UnitOperationTypes.REPAIR_ROUTE) then return; end -- So many operations that cost all movement!
	ExtendedShiftAction(playerID, unitID);
end

function OnUnitCommandStarted_ExtendedShift(player, unitId, hCommand, iData1)
    if (hCommand ~= UnitCommandTypes.BUILDING_PRODUCTION and hCommand ~= UnitCommandTypes.DISTRICT_PRODUCTION and hCommand ~= UnitCommandTypes.HARVEST_WONDER and hCommand ~= UnitCommandTypes.PROJECT_PRODUCTION and hCommand ~= UnitCommandTypes.WONDER_PRODUCTION) then return; end -- Not that many commands that cost all movement!
	ExtendedShiftAction(playerID, unitID);
end

function ExtendedShiftAction(playerID:number, unitID:number)
	if (not HasTrait("TRAIT_LEADER_QIXING_YUHENG", playerID)) then return; end

	local pUnit = Players[playerID]:GetUnits():FindID(unitID);
	if (not pUnit) then return; end

	local unitType = GameInfo.Units[pUnit:GetType()].UnitType;
	if (unitType == "UNIT_BUILDER" or unitType == "UNIT_MILITARY_ENGINEER") then
	
		if (pUnit:GetAbility():GetAbilityCount("ABILITY_KEQING_EXTENDED_SHIFT") > 0) then
			UnitManager.RestoreMovementToFormation(pUnit);
			pUnit:GetAbility():ChangeAbilityCount("ABILITY_KEQING_EXTENDED_SHIFT", -1);	
		end
	end
end

Events.TurnBegin.Add(OnTurnBegin_ResetShift);
Events.CityMadePurchase.Add(OnCityMadePurchase_GrantMovement);
Events.UnitOperationStarted.Add(OnUnitOperationStarted_ExtendShift);
Events.UnitCommandStarted.Add(OnUnitCommandStarted_ExtendedShift);
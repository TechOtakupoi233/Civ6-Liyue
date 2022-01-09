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
	local pUnitWithMaxID;
	for i, pUnit in ipairs(Units.GetUnitsInPlot(Map.GetPlot(iX,iY))) do 
	    if not pUnitWithMaxID then
            pUnitWithMaxID = pUnit;
        end
        if pUnitWithMaxID then 
            if pUnit:GetID() > pUnitWithMaxID:GetID()  then -- choose the one that is produced (hopefully) later
                pUnitWithMaxID = pUnit;
            end
        end
	end
    if pUnitWithMaxID then
        if (pUnitWithMaxID:GetType() == objectType) then
            UnitManager.RestoreMovementToFormation(pUnitWithMaxID);
            UnitManager.RestoreUnitAttacks(pUnitWithMaxID);
        else
            for i, pUnit in Players[playerID]:GetUnits():Members() do -- "Unit in this plot" just ignores traders. This branch is for the case when an unit is just at the city.
                if not pUnitWithMaxID then
                    pUnitWithMaxID = pUnit;
                end
                if pUnitWithMaxID then 
                    if pUnit:GetID() > pUnitWithMaxID:GetID()  then 
                        pUnitWithMaxID = pUnit;
                    end
                 end
            end
            UnitManager.RestoreMovementToFormation(pUnitWithMaxID);
            UnitManager.RestoreUnitAttacks(pUnitWithMaxID);
        end
    else
        for i, pUnit in Players[playerID]:GetUnits():Members() do -- while this branch handle the case when no other unit is there.
            if not pUnitWithMaxID then
                pUnitWithMaxID = pUnit;
            end
            if pUnitWithMaxID then 
                if pUnit:GetID() > pUnitWithMaxID:GetID()  then 
                    pUnitWithMaxID = pUnit;
                end
             end
        end
        UnitManager.RestoreMovementToFormation(pUnitWithMaxID);
        UnitManager.RestoreUnitAttacks(pUnitWithMaxID);
    end
end

function OnUnitOperationStarted_ExtendShift(playerID:number, unitID:number, operationID:number)
	if (operationID ~= UnitOperationTypes.BUILD_IMPROVEMENT and operationID ~= UnitOperationTypes.BUILD_IMPROVEMENT_ADJACENT and operationID ~= UnitOperationTypes.BUILD_ROUTE and operationID ~= UnitOperationTypes.CLEAR_CONTAMINATION and operationID ~= UnitOperationTypes.HARVEST_RESOURCE and operationID ~= 744183902 and operationID ~= UnitOperationTypes.REMOVE_FEATURE and operationID ~= UnitOperationTypes.REMOVE_IMPROVEMENT and operationID ~= UnitOperationTypes.REPAIR and operationID ~= UnitOperationTypes.REPAIR_ROUTE) then return; end -- So many operations that cost all movement!
	-- For unknown reason the actual operation ID (744183902) of planting forest cannot be obtained by UnitOperationTypes.PLANT_FOREST (nil). A workaround has been used for that.
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
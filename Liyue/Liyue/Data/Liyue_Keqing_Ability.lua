include("GameCapabilities");

function OnTurnBegin_ResetShift()								-- Reset ExtendedShift Status every turn
    for playerID = 0, GameDefines.MAX_PLAYERS-1, 1 do
        if (not HasTrait("TRAIT_LEADER_QIXING_YUHENG", playerID)) then return; end

		for i, pUnit in Players[playerID]:GetUnits():Members() do
			local unitType = GameInfo.Units[pUnit:GetType()].UnitType
            if (unitType == "UNIT_BUILDER" or unitType == "UNIT_MILITARY_ENGINEER") then
				pUnit:SetProperty("ExtendedShift", 0);
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
	if (operationID ~= 0x1D60E778) then return; end				-- Restore Build Charge if ExtendedShift not Activated
	if (not HasTrait("TRAIT_LEADER_QIXING_YUHENG", playerID)) then return; end

	local pUnit = Players[playerID]:GetUnits():FindID(unitID);
	if (not pUnit) then return; end

	local unitType = GameInfo.Units[pUnit:GetType()].UnitType;
	if (unitType == "UNIT_BUILDER" or unitType == "UNIT_MILITARY_ENGINEER") then
	
		if (pUnit:GetProperty("ExtendedShift") ~= 1) then
			UnitManager.RestoreMovementToFormation(pUnit);
			pUnit:SetProperty("ExtendedShift", 1);				-- Activate ExtendedShift flag
		end
	end
end

Events.TurnBegin.Add(OnTurnBegin_ResetShift);
Events.CityMadePurchase.Add(OnCityMadePurchase_GrantMovement);
Events.UnitOperationStarted.Add(OnUnitOperationStarted_ExtendShift);
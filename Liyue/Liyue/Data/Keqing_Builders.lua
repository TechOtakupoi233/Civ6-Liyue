function OnTurnStarted(playerID)
    if HasTrait("TRAIT_LEADER_THE_STAR_OF_CHANGE", playerID) then -- short-circuit when player has no trait
        local pPlayer = Players[playerID];
        local pUnit = pPlayer:GetUnits():FindID(unitID);
        if pUnit ~= nil then
            local unitType = GameInfo.Units[pUnit:GetType()].UnitType;
            if unitType == "UNIT_BUILDER" then
                local pUnitAbility = pUnit:GetAbility();
                if HasAbility(playerID, unitID, "ABILITY_KEQING_EXTENDED_SHIFT") then
				    UnitManager.RestoreMovement(pUnit);
					UnitManager.RestoreUnitAttacks(pUnit);
                end
            end
        end
    end

end

function OnUnitChargesChanged_ExtendedShift(playerID, unitID, newCharges, oldCharges)
    if HasTrait("TRAIT_LEADER_THE_STAR_OF_CHANGE", playerID) then -- short-circuit when player has no trait
        local pPlayer = Players[playerID];
        local pUnit = pPlayer:GetUnits():FindID(unitID);
        if pUnit ~= nil then
            local unitType = GameInfo.Units[pUnit:GetType()].UnitType;
            if unitType == "UNIT_BUILDER" then
                local pUnitAbility = pUnit:GetAbility();
                if HasAbility(playerID, unitID, "ABILITY_KEQING_EXTENDED_SHIFT") then
				    UnitManager.RestoreMovement(pUnit);
					UnitManager.RestoreUnitAttacks(pUnit);
                end
            end
        end
    end
end

Events.PlayerTurnStarted.Add(OnTurnStarted)
Events.UnitChargesChanged.Add(OnUnitChargesChanged_ExtendedShift);
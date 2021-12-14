function OnTrainingComplete(playerID, cityID, iConstructionType, unitID, bCancelled)
    local pPlayer = Players[iplayerID];
    local unit = GameInfo.Units["UNIT_BUILDER"];
    if (iConstructionType ~= unit) then
        pUnitManager.Kill(unitID);
    end;

end

Events.CityProductionCompleted.Add(OnTrainingComplete)
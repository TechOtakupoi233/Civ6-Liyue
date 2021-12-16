local m_BuilderIndex = GameInfo.Units['UNIT_BUILDER'].Index

function OnUnitSelectionChanged(iPlayerID, iUnitID, iPlotX, iPlotY, iPlotZ, bSelected, bEditable)
    if bSelected then
        local pUnit = UnitManager.GetUnit(iPlayerID, iUnitID)
        if pUnit:GetType() ~= m_BuilderIndex then
            Controls.RegroupButtonGrid:SetHide(true)
            return
        end
    end
end
-- 按钮被点击之后
function OnRegroupButtonClicked()
    local pUnit = UI.GetHeadSelectedUnit()
    local iX = pUnit:GetX()
    local iY = pUnit:GetY()
    ExposedMembers.RegroupButton.Unit(iX, iY, pUnit)
end


function SetupRegroupButton()
    local path = '/InGame/UnitPanel/StandardActionsStack'
    local ctrl = ContextPtr:LookUpControl(path)
    if ctrl ~= nil then
        Controls.RegroupButtonGrid:ChangeParent(ctrl)
    end
    Controls.RegroupButton:RegisterCallback(Mouse.eLClick, OnRegroupButtonClicked)
end

Events.LoadGameViewStateDone.Add(SetupRegroupButton)
Events.UnitSelectionChanged.Add(OnUnitSelectionChanged)
function PlaySoundTeyvat(audio)
	UI.PlaySound(audio);
end


function SelectUnitTeyvat(iPlayerID, iUnitID)
	local pUnit = Players[iPlayerID]:GetUnits():FindID(iUnitID);
	UI.SelectUnit(pUnit);
end

ExposedMembers.TEYVAT = ExposedMembers.TEYVAT or {}
ExposedMembers.TEYVAT.PlaySoundTeyvat = PlaySoundTeyvat
ExposedMembers.TEYVAT.SelectUnitTeyvat = SelectUnitTeyvat
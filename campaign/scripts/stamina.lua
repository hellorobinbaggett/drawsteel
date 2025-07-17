function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local nCurrent = DB.getValue(nodeWin, "hp.stamina");
    local nMax = DB.getValue(nodeWin, "hp.max");
    local nWinded = DB.getValue(nodeWin, "hp.winded");
    local nDead = (0 - nWinded);
    
    if(nCurrent > nMax) then
        setValue(nMax);
    end

    if(nCurrent <= nDead) then
        setValue(nDead);
    end
    window.onHealthChanged();
end



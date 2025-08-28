function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local nCurrent = DB.getValue(nodeWin, "stamina.current");
    local nMax = DB.getValue(nodeWin, "stamina.max");
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
function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local nCurrent = DB.getValue(nodeWin, "hp.stamina");
    local nMax = DB.getValue(nodeWin, "hp.max");
    local nWinded = nMax / 2;
    local nDead = (0 - nWinded);
    
    if(nCurrent > nMax) then
        setValue(nMax);
    end

    if(nCurrent < 0) then
        setValue(0);
    end
    window.onHealthChanged();
end



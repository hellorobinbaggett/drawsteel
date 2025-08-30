function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local nCurrent = DB.getValue(nodeWin, "stamina.current");
    local nMax = DB.getValue(nodeWin, "stamina.max");
    
    if(nCurrent > nMax) then
        setValue(nMax);
    end

    window.onHealthChanged();
end
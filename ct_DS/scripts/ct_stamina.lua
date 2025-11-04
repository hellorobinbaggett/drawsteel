function onValueChanged()
    onHealthChanged();
end

function onHealthChanged()
    setColor(getPCSheetWoundColors());
end

function getPCSheetWoundColors()
    local nodeWin = window.getDatabaseNode();
    local nCurrent = DB.getValue(nodeWin, "stamina.current");
    local nDying = 0;

    local sColor = "1a6313";

    if nCurrent < nDying then
        sColor = "120909";
    end

    return sColor;
end
function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local nLevel = DB.getValue(nodeWin, "levelnumbertitle");
    local nEchelon = DB.getValue(nodeWin, "echelonnumbertitle");

    if(nLevel < 4) then
        DB.setValue(nodeWin, "echelonnumbertitle", "number", 1);
    elseif(nLevel == 10) then
        DB.setValue(nodeWin, "echelonnumbertitle", "number", 4);
    elseif(nLevel > 3 and nLevel < 7) then
        DB.setValue(nodeWin, "echelonnumbertitle", "number", 2);
    else
        DB.setValue(nodeWin, "echelonnumbertitle", "number", 3);
    end
end		
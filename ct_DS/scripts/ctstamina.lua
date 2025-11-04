function onInit()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");
    local sOptCTSI = OptionsManager.getOption("CTSI");
    local nCurrentScore = DB.getValue(nodeWin, "stamina.current");

    if Session.IsHost then
        setVisible(true);
    else
        if sFaction == "friend" then
            setVisible(true);
        else
            setVisible(false);
        end
    end
end
-- if stamina value is changed, check to see if ally, then update player visibility
-- TODO: this should trigger on faction change, not stamina change
function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");
    local nCurrentScore = DB.getValue(nodeWin, "stamina.current");

    if Session.IsHost or sOptCTSI == "show" then
        setVisible(true);
    else
        if sFaction == "friend" then
            setVisible(true);
        else
            setVisible(false);
        end
    end
end
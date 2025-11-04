function onInit()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");

    if Session.IsHost or OptionsManager.isOption("HMFP", "show") then
        setVisible(true);
    else
        -- if hideMaliceButton == "yes" then
            -- setVisible(true);
        -- else
            setVisible(false);
        -- end
    end
end

function onValueChanged()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");

    if Session.IsHost or OptionsManager.isOption("HMFP", "show") then
        setVisible(true);
    else
        -- if hideMaliceButton == "yes" then
            -- setVisible(true);
        -- else
            setVisible(false);
        -- end
    end
end
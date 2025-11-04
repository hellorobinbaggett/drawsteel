function onInit()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");

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

function onFactionChanged()
    local nodeWin = window.getDatabaseNode();
    local sFaction = DB.getValue(nodeWin, "friendfoe");
    
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
function onInit()


    if Session.IsHost then
        setVisible(true);
    else
        -- if sFaction == "friend" then
        --     setVisible(true);
        -- else
            setVisible(false);
        -- end
    end
end

function onFactionChanged()

    
    if Session.IsHost then
        setVisible(true);
    else
        -- if sFaction == "friend" then
        --     setVisible(true);
        -- else
            setVisible(false);
        -- end
    end
end
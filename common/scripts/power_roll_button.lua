function action(draginfo)
    local nodeWin = window.getDatabaseNode();
    local sCharSheetID = DB.getPath(DB.getChild(nodeWin, '...'));
    local CharSheetID = DB.findNode(sCharSheetID);
    local characteristic = DB.getValue(nodeWin, "ability.characteristic.button");

    -- add the characteristic that is chosed for the skill
    characteristicMod = 0;
    -- AGL
    if (characteristic == 1) then
        characteristicMod = DB.getValue(CharSheetID, "AGL");
        if (characteristicMod == nill) then
            characteristicMod = 0;
        end
    end
    -- REA
    if (characteristic == 2) then
        characteristicMod = DB.getValue(CharSheetID, "REA");
        if (characteristicMod == nill) then
            characteristicMod = 0;
        end
    end
    -- INU
    if (characteristic == 3) then
        characteristicMod = DB.getValue(CharSheetID, "INU");
        if (characteristicMod == nil) then
            characteristicMod = 0;
        end
    end
    -- PRS
    if (characteristic == 4) then
        characteristicMod = DB.getValue(CharSheetID, "PRS");
        if (characteristicMod == nill) then
            characteristicMod = 0;
        end
    end
    -- MGT
    if (characteristic == 0) then
        characteristicMod = DB.getValue(CharSheetID, "MGT");
        if (characteristicMod == nill) then
            characteristicMod = 0;
        end
    end

    local abilityName = DB.getValue(nodeWin, "name", "");
    local abilityKeywords = DB.getValue(nodeWin, "keywords", "");
    local abilityCost = DB.getValue(nodeWin, "ability_cost");
    local heroResource = DB.getChild(CharSheetID, "classresource");
    local rActor = ActorManager.resolveActor(window.getDatabaseNode());
    local nodePC = ActorManager.getCreatureNode(rActor);

    local current = DB.getValue(CharSheetID, "classresource"); 

    if (current ~= nill) then --source from char sheet?
        if (current >= abilityCost) then
            if (abilityCost > 0) then --ability costs?
                local newTotal = (current - abilityCost);

                DB.setValue(CharSheetID, "classresource", "number", newTotal);
                local heroName = DB.getChild(CharSheetID, "name").getValue();
                ChatManager.SystemMessageResource("ability_message_resource", heroName, tostring(abilityCost));
            end
        else
            ChatManager.SystemMessageResource("ability_message_resourcewarning");
        end
    end

    
    local rRoll = { 
        sType = "dice", 
        sDesc = "" .. abilityName .. " \n(" .. abilityKeywords .. ")", 
        aDice = { "d10", "d10" },
        nMod = characteristicMod,
        t1 = DB.getValue(nodeWin, "tier1"),
        t2 = DB.getValue(nodeWin, "tier2"),
        t3 = DB.getValue(nodeWin, "tier3");
        effect = DB.getValue(nodeWin, "ability.effect");
    };
    ActionsManager_DS.encodeDesktopMods(rRoll);
    ActionsManager.performAction(draginfo, rActor, rRoll);
    return true;
end

function onDragStart(button, x, y, draginfo)
    return action(draginfo);
end

function onButtonPress()
    return action();
end
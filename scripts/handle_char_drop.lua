function onDrop(x, y, draginfo)
    if draginfo.isType("shortcut") then
            local sClass, sRecord = draginfo.getShortcutData();
            local node = getDatabaseNode();

            -- kit
            if StringManager.contains({ "kit" }, sClass) then
                local nodeSource = DB.findNode(sRecord); -- kit record
                local kitName = DB.getChild(nodeSource, "name"); -- kit name
                local kitAbility = DB.getChild(nodeSource, "signatureabilities"); -- kit ability
                local heroKit = DB.getChild(node, "career"); -- charactersheet kit title
                local nodeKitList = DB.createChild(node, "kit"); -- charactersheet kit details
                local nodeKitAbilityList = DB.createChild(node, "signatureabilities"); -- charactersheet abilities

                DB.copyNode(nodeSource, nodeKitList); -- copy kit informatioin
                DB.copyNode(kitName, heroKit); -- copy kit name
                DB.copyNode(kitAbility, nodeKitAbilityList); -- copy kit ability

                local heroName = DB.getChild(node, "name").getValue();
                ChatManager.SystemMessageResource("char_abilities_message_kitadd", tostring(kitName.getValue()), tostring(heroName));
            end

            -- ancestry
            if StringManager.contains({ "ancestry" }, sClass) then
                local nodeSource = DB.findNode(sRecord);
                local ancestryName = DB.getChild(nodeSource, "name");
                local nodeSourceFeatures = DB.getChild(nodeSource, "features");
                local heroAncestry = DB.getChild(node, "ancestry");
                local nodeAncestryList = DB.createChild(node, "features");

                if not nodeAncestryList then
                    return nil;
                end

                DB.copyNode(nodeSourceFeatures, nodeAncestryList);
                DB.copyNode(ancestryName, heroAncestry);

                local heroName = DB.getChild(node, "name").getValue();
                ChatManager.SystemMessageResource("char_abilities_message_ancestryadd", tostring(ancestryName.getValue()), tostring(heroName));
            end

            -- class - WIP
            if StringManager.contains({ "class" }, sClass) then
                local heroClass = DB.getChild(node, "classtitle");
                local heroFeaturesList = DB.createChild(node, "featureslist");
                local heroChoiceList = DB.createChild(node, "classfeaturechoicelist");
                local heroLevel = DB.getChild(node, "levelnumbertitle");

                local nodeSource = DB.findNode(sRecord);
                local className = DB.getChild(nodeSource, "name");
                local classFeaturesList = DB.createChild(nodeSource, "features");

                if not heroFeaturesList then
                    return nil;
                end

                -- add only the class features that are equal to or below class level
                local tNodes = DB.getChildren(nodeSource, "features")
                for key,value in pairs(tNodes) do
                    local level = DB.createChild(value, "level");
                    if(level.getValue() == heroLevel.getValue()) then
                        DB.createChildAndCopy(heroFeaturesList, value);
                    end
                end

                local tNodes = DB.getChildren(nodeSource, "featurechoices")
                for key,value in pairs(tNodes) do
                    local level = DB.createChild(value, "level");
                    if(level.getValue() == heroLevel.getValue()) then
                        DB.createChildAndCopy(heroChoiceList, value);
                    end
                end

                local staminaPerLevel = DB.getChild(nodeSource, "staminaPerLevel");
                local startingStamina = DB.getChild(nodeSource, "startingStamina");
                local heroMaxStamina = DB.getChild(nodeSource, "hp.stamina");
                local heroCurrentStamina = DB.getChild(nodeSource, "hp.max");
                if(heroLevel.getValue() == 1) then
                    DB.copyNode(startingStamina, DB.getChild(node, "hp.stamina"));
                    DB.copyNode(startingStamina, DB.getChild(node, "hp.max"));
                end
                if(heroLevel.getValue() > 1) then
                    local levelMultiplyer = (heroLevel.getValue() - 1)
                    local additionalStamina = (staminaPerLevel.getValue() * levelMultiplyer);
                    local totalStamina = (additionalStamina + startingStamina.getValue());
                    DB.setValue(node, "hp.stamina", "number", totalStamina);
                    DB.setValue(node, "hp.max", "number", totalStamina);
                end
                

                DB.copyNode(DB.getChild(nodeSource, "name"), DB.getChild(node, "classtitle"));
                DB.copyNode(DB.getChild(nodeSource, "startingRecoveries"), DB.getChild(node, "recoverycurrent"));
                DB.copyNode(DB.getChild(nodeSource, "startingRecoveries"), DB.getChild(node, "recoverymax"));
                DB.copyNode(DB.getChild(nodeSource, "startingMight"), DB.getChild(node, "MGT"));
                DB.copyNode(DB.getChild(nodeSource, "startingAgility"), DB.getChild(node, "AGL"));
                DB.copyNode(DB.getChild(nodeSource, "startingReason"), DB.getChild(node, "REA"));
                DB.copyNode(DB.getChild(nodeSource, "startingIntuition"), DB.getChild(node, "INU"));
                DB.copyNode(DB.getChild(nodeSource, "startingPresence"), DB.getChild(node, "PRS"));

                local heroName = DB.getChild(node, "name").getValue();
                ChatManager.SystemMessageResource("char_abilities_message_classadd", tostring(className.getValue()), tostring(heroName));
            end

            -- TODO: abilities
            if StringManager.contains({ "ability" }, sClass) then
                local nodeSource = DB.findNode(sRecord); -- ability record
                local abilityName = DB.getChild(nodeSource, "name"); -- kit name
                local nodeAbilitiesList = DB.createChild(node, "actionslist");
                local nodeSignaturesList = DB.createChild(node, "signatureabilities");
                local nodeTriggeredManeuvers = DB.createChild(node, "maneuverandtriggeredabilitieslist");
                local nodeHeroicAbilities = DB.createChild(node, "heroicabilitieslist");
                local heroAbilityList = DB.createChild(node, "actionslist");


                local signature = string.match(DB.getChild(nodeSource, "abilitytype").getValue(), "Signature");
                local triggered = string.match(DB.getChild(nodeSource, "type").getValue(), "Triggered");
                local maneuver = string.match(DB.getChild(nodeSource, "type").getValue(), "Maneuver");

                if (DB.getChild(nodeSource, "ability_cost")) then
                    if (DB.getChild(nodeSource, "ability_cost").getValue() > 0) then
                        DB.createChildAndCopy(nodeHeroicAbilities, nodeSource);
                    elseif (signature) then
                        DB.createChildAndCopy(nodeSignaturesList, nodeSource);
                    elseif (triggered or maneuver) then
                        DB.createChildAndCopy(nodeTriggeredManeuvers, nodeSource);
                    else -- generic ability
                        DB.createChildAndCopy(heroAbilityList, nodeSource);
                    end
                end
                

                local heroName = DB.getChild(node, "name").getValue();
                ChatManager.SystemMessageResource("char_abilities_message_abilityadd", tostring(abilityName.getValue()), tostring(heroName));
            end
        end
end
-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	update();
end
function VisDataCleared()
	update();
end
function InvisDataAdded()
	update();
end

function update()
	local nodeRecord = getDatabaseNode();
	local bReadOnly = WindowManager.getReadOnlyState(nodeRecord);
	local bID = LibraryData.getIDState("npc", nodeRecord);

	local bSection1 = false;
	local bSection2 = false;
	local bSection3 = false;
	local bSection4 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability", bReadOnly) then bSection2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords", bReadOnly) then bSection2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type", bReadOnly) then bSection2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance", bReadOnly) then bSection2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target", bReadOnly) then bSection2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string", bReadOnly);


	-- ABILITY 2
	local bSection1_2 = false;
	local bSection2_2 = false;
	local bSection3_2 = false;
	local bSection4_2 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_2", bReadOnly) then bSection2_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_2", bReadOnly) then bSection2_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_2", bReadOnly) then bSection2_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_2", bReadOnly) then bSection2_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_2", bReadOnly) then bSection2_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_2", bReadOnly) then bSection3_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_2", bReadOnly) then bSection3_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_2", bReadOnly) then bSection3_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_2", bReadOnly) then bSection3_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_2", bReadOnly) then bSection4_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_2", bReadOnly) then bSection4_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_2", bReadOnly) then bSection4_2 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_2", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_2", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_2", bReadOnly);


	-- ABILITY 2
	local bSection1_3 = false;
	local bSection2_3 = false;
	local bSection3_3 = false;
	local bSection4_3 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_3", bReadOnly) then bSection2_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_3", bReadOnly) then bSection2_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_3", bReadOnly) then bSection2_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_3", bReadOnly) then bSection2_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_3", bReadOnly) then bSection2_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_3", bReadOnly) then bSection3_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_3", bReadOnly) then bSection3_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_3", bReadOnly) then bSection3_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_3", bReadOnly) then bSection3_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_3", bReadOnly) then bSection4_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_3", bReadOnly) then bSection4_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_3", bReadOnly) then bSection4_3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_3", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_3", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_3", bReadOnly);

	-- ABILITY 2
	local bSection1_4 = false;
	local bSection2_4 = false;
	local bSection3_4 = false;
	local bSection4_4 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_4", bReadOnly) then bSection2_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_4", bReadOnly) then bSection2_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_4", bReadOnly) then bSection2_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_4", bReadOnly) then bSection2_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_4", bReadOnly) then bSection2_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_4", bReadOnly) then bSection3_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_4", bReadOnly) then bSection3_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_4", bReadOnly) then bSection3_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_4", bReadOnly) then bSection3_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_4", bReadOnly) then bSection4_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_4", bReadOnly) then bSection4_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_4", bReadOnly) then bSection4_4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_4", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_4", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_4", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_4", bReadOnly);

	-- ABILITY 2
	local bSection1_5 = false;
	local bSection2_5 = false;
	local bSection3_5 = false;
	local bSection4_5 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_5", bReadOnly) then bSection2_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_5", bReadOnly) then bSection2_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_5", bReadOnly) then bSection2_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_5", bReadOnly) then bSection2_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_5", bReadOnly) then bSection2_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_5", bReadOnly) then bSection3_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_5", bReadOnly) then bSection3_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_5", bReadOnly) then bSection3_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_5", bReadOnly) then bSection3_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_5", bReadOnly) then bSection4_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_5", bReadOnly) then bSection4_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_5", bReadOnly) then bSection4_5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_5", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_5", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_5", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_5", bReadOnly);

	-- ABILITY 2
	local bSection1_6 = false;
	local bSection2_6 = false;
	local bSection3_6 = false;
	local bSection4_6 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_6", bReadOnly) then bSection2_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_6", bReadOnly) then bSection2_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_6", bReadOnly) then bSection2_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_6", bReadOnly) then bSection2_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_6", bReadOnly) then bSection2_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_6", bReadOnly) then bSection3_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_6", bReadOnly) then bSection3_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_6", bReadOnly) then bSection3_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_6", bReadOnly) then bSection3_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_6", bReadOnly) then bSection4_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_6", bReadOnly) then bSection4_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_6", bReadOnly) then bSection4_6 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_6", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_6", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_6", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_6", bReadOnly);

	-- ABILITY 2
	local bSection1_7 = false;
	local bSection2_7 = false;
	local bSection3_7 = false;
	local bSection4_7 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_7", bReadOnly) then bSection2_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_7", bReadOnly) then bSection2_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_7", bReadOnly) then bSection2_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_7", bReadOnly) then bSection2_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_7", bReadOnly) then bSection2_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_7", bReadOnly) then bSection3_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_7", bReadOnly) then bSection3_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_7", bReadOnly) then bSection3_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_7", bReadOnly) then bSection3_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_7", bReadOnly) then bSection4_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_7", bReadOnly) then bSection4_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_7", bReadOnly) then bSection4_7 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_7", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_7", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_7", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_7", bReadOnly);

	-- ABILITY 2
	local bSection1_8 = false;
	local bSection2_8 = false;
	local bSection3_8 = false;
	local bSection4_8 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_8", bReadOnly) then bSection2_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_8", bReadOnly) then bSection2_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_8", bReadOnly) then bSection2_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_8", bReadOnly) then bSection2_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_8", bReadOnly) then bSection2_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_8", bReadOnly) then bSection3_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_8", bReadOnly) then bSection3_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_8", bReadOnly) then bSection3_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_8", bReadOnly) then bSection3_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_8", bReadOnly) then bSection4_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_8", bReadOnly) then bSection4_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_8", bReadOnly) then bSection4_8 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_8", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_8", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_8", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_8", bReadOnly);

	-- ABILITY 2
	local bSection1_9 = false;
	local bSection2_9 = false;
	local bSection3_9 = false;
	local bSection4_9 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_9", bReadOnly) then bSection2_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_9", bReadOnly) then bSection2_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_9", bReadOnly) then bSection2_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_9", bReadOnly) then bSection2_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_9", bReadOnly) then bSection2_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_9", bReadOnly) then bSection3_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_9", bReadOnly) then bSection3_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_9", bReadOnly) then bSection3_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_9", bReadOnly) then bSection3_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_9", bReadOnly) then bSection4_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_9", bReadOnly) then bSection4_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_9", bReadOnly) then bSection4_9 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_9", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_9", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_9", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_9", bReadOnly);

	-- ABILITY 2
	local bSection1_10 = false;
	local bSection2_10 = false;
	local bSection3_10 = false;
	local bSection4_10 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_10", bReadOnly) then bSection2_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_10", bReadOnly) then bSection2_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_10", bReadOnly) then bSection2_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_10", bReadOnly) then bSection2_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_10", bReadOnly) then bSection2_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_10", bReadOnly) then bSection3_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_10", bReadOnly) then bSection3_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_10", bReadOnly) then bSection3_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_10", bReadOnly) then bSection3_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_10", bReadOnly) then bSection4_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_10", bReadOnly) then bSection4_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_10", bReadOnly) then bSection4_10 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_10", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_10", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_10", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_10", bReadOnly);

	-- ABILITY 2
	local bSection1_11 = false;
	local bSection2_11 = false;
	local bSection3_11 = false;
	local bSection4_11 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_11", bReadOnly) then bSection2_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_11", bReadOnly) then bSection2_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_11", bReadOnly) then bSection2_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_11", bReadOnly) then bSection2_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_11", bReadOnly) then bSection2_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_11", bReadOnly) then bSection3_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_11", bReadOnly) then bSection3_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_11", bReadOnly) then bSection3_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_11", bReadOnly) then bSection3_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_11", bReadOnly) then bSection4_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_11", bReadOnly) then bSection4_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_11", bReadOnly) then bSection4_11 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_11", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_11", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_11", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_11", bReadOnly);

	-- ABILITY 2
	local bSection1_12 = false;
	local bSection2_12 = false;
	local bSection3_12 = false;
	local bSection4_12 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_12", bReadOnly) then bSection2_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_12", bReadOnly) then bSection2_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_12", bReadOnly) then bSection2_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_12", bReadOnly) then bSection2_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_12", bReadOnly) then bSection2_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_12", bReadOnly) then bSection3_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_12", bReadOnly) then bSection3_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_12", bReadOnly) then bSection3_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_12", bReadOnly) then bSection3_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_12", bReadOnly) then bSection4_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_12", bReadOnly) then bSection4_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_12", bReadOnly) then bSection4_12 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_12", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_12", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_12", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_12", bReadOnly);

	-- ABILITY 2
	local bSection1_13 = false;
	local bSection2_13 = false;
	local bSection3_13 = false;
	local bSection4_13 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_13", bReadOnly) then bSection2_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_13", bReadOnly) then bSection2_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_13", bReadOnly) then bSection2_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_13", bReadOnly) then bSection2_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_13", bReadOnly) then bSection2_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_13", bReadOnly) then bSection3_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_13", bReadOnly) then bSection3_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_13", bReadOnly) then bSection3_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_13", bReadOnly) then bSection3_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_13", bReadOnly) then bSection4_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_13", bReadOnly) then bSection4_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_13", bReadOnly) then bSection4_13 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_13", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_13", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_13", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_13", bReadOnly);

	-- ABILITY 2
	local bSection1_14 = false;
	local bSection2_14 = false;
	local bSection3_14 = false;
	local bSection4_14 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_14", bReadOnly) then bSection2_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_14", bReadOnly) then bSection2_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_14", bReadOnly) then bSection2_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_14", bReadOnly) then bSection2_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_14", bReadOnly) then bSection2_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_14", bReadOnly) then bSection3_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_14", bReadOnly) then bSection3_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_14", bReadOnly) then bSection3_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_14", bReadOnly) then bSection3_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_14", bReadOnly) then bSection4_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_14", bReadOnly) then bSection4_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_14", bReadOnly) then bSection4_14 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_14", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_14", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_14", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_14", bReadOnly);

	-- ABILITY 2
	local bSection1_15 = false;
	local bSection2_15 = false;
	local bSection3_15 = false;
	local bSection4_15 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_15", bReadOnly) then bSection2_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_15", bReadOnly) then bSection2_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_15", bReadOnly) then bSection2_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_15", bReadOnly) then bSection2_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_15", bReadOnly) then bSection2_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_15", bReadOnly) then bSection3_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_15", bReadOnly) then bSection3_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_15", bReadOnly) then bSection3_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_15", bReadOnly) then bSection3_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_15", bReadOnly) then bSection4_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_15", bReadOnly) then bSection4_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_15", bReadOnly) then bSection4_15 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_15", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_15", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_15", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_15", bReadOnly);

	-- ABILITY 2
	local bSection1_16 = false;
	local bSection2_16 = false;
	local bSection3_16 = false;
	local bSection4_16 = false;
	if WindowManager.callSafeControlUpdate(self, "abilityname_ability_16", bReadOnly) then bSection2_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "keywords_16", bReadOnly) then bSection2_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "type_16", bReadOnly) then bSection2_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "distance_16", bReadOnly) then bSection2_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "target_16", bReadOnly) then bSection2_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "characteristic_label_16", bReadOnly) then bSection3_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier1_16", bReadOnly) then bSection3_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier2_16", bReadOnly) then bSection3_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "tier3_16", bReadOnly) then bSection3_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "trigger_16", bReadOnly) then bSection4_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "effect_16", bReadOnly) then bSection4_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "special_16", bReadOnly) then bSection4_16 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_16", bReadOnly) then bSection4 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost_string_16", bReadOnly) then bSection4 = true; end;
	-- hides fields
	WindowManager.callSafeControlUpdate(self, "abilityname_ability_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_16", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost_string_16", bReadOnly);

end
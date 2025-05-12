-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	-- self.onSummaryChanged();
	update();
end
function VisDataCleared()
	update();
end
function InvisDataAdded()
	update();
end

-- function onSummaryChanged()
-- 	local nodeRecord = getDatabaseNode();

-- 	local tFirstSummary = {};
-- 	local sSize = DB.getValue(nodeRecord, "level_name", "");
-- 	if sSize ~= "" then
-- 		table.insert(tFirstSummary, sSize);
-- 	end
-- 	local sType = DB.getValue(nodeRecord, "level_name", "");
-- 	if sType ~= "" then
-- 		table.insert(tFirstSummary, sType);
-- 	end
-- 	local sFirstSummary = table.concat(tFirstSummary, " ");

-- 	local tSecondSummary = {};
-- 	if sFirstSummary ~= "" then
-- 		table.insert(tSecondSummary, sFirstSummary);
-- 	end
-- 	local sAlign = DB.getValue(nodeRecord, "level_name", "");
-- 	if sAlign ~= "" then
-- 		table.insert(tSecondSummary, sAlign);
-- 	end

-- 	summary.setValue(table.concat(tSecondSummary, ", "));
-- end

function update()
	local nodeRecord = getDatabaseNode();
	local bReadOnly = WindowManager.getReadOnlyState(nodeRecord);
	local bID = LibraryData.getIDState("npc", nodeRecord);
	local tFields = { 
		"level_name", "organization_name",
		"ev",
	};
	WindowManager.callSafeControlsUpdate(self, tFields, bReadOnly);

	local bSection1 = false;
	if Session.IsHost then
		if WindowManager.callSafeControlUpdate(self, "level_name", bReadOnly, true) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "role_name", bReadOnly, true) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "ev", bReadOnly, true) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "traits_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "creaturerole_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "organization_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "keywords_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "nonid_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "speed", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "reach", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "stability_label", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "freestrike", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "withcaptain", bReadOnly) then bSection1 = true; end;
	else
		WindowManager.callSafeControlUpdate(self, "level_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "role_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "ev", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "traits_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "creaturerole_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "organization_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "keywords_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "nonid_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "speed", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "reach", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "stability_label", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "freestrike", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "withcaptain", bReadOnly, true);
	end
	-- divider.setVisible(bSection1);

	local bSection2 = false;
	if Session.IsHost then
		if WindowManager.callSafeControlUpdate(self, "size", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "mgt", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "agl", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "rea", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "inu", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "prs", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "stability", bReadOnly, true) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "weakness_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "immunity_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "speedtype_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "languages_name", bReadOnly) then bSection2 = true; end;
	else
		WindowManager.callSafeControlUpdate(self, "size", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "mgt", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "agl", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "rea", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "inu", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "prs", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "stability", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "weakness_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "immunity_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "speedtype_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "languages_name", bReadOnly, true);
	end
	
	
	local bSection3 = false;
	if WindowManager.callSafeControlUpdate(self, "skills", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "items", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "languages", bReadOnly) then bSection = true; end;
	divider2.setVisible(bSection3);
end

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
	if Session.IsHost then
		if WindowManager.callSafeControlUpdate(self, "level_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "traits_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "creaturerole_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "organization_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "keywords_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "nonid_name", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "speed", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "size", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "reach", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "stability_label", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "freestrike", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "withcaptain", bReadOnly) then bSection1 = true; end;
		if WindowManager.callSafeControlUpdate(self, "ev_name", bReadOnly) then bSection1 = true; end;
	else
		WindowManager.callSafeControlUpdate(self, "traits_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "creaturerole_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "organization_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "keywords_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "maxstamina", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "nonid_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "speed", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "size", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "reach", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "stability_label", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "freestrike", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "withcaptain", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "ev_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "level_name", bReadOnly, true);
	end
	-- divider.setVisible(bSection1);

	local bSection2 = false;
	if Session.IsHost then
		if WindowManager.callSafeControlUpdate(self, "weakness_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "immunity_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "speedtype_name", bReadOnly) then bSection2 = true; end;
		if WindowManager.callSafeControlUpdate(self, "languages_name", bReadOnly) then bSection2 = true; end;
	else
		WindowManager.callSafeControlUpdate(self, "weakness_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "immunity_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "speedtype_name", bReadOnly, true);
		WindowManager.callSafeControlUpdate(self, "languages_name", bReadOnly, true);
	end
	
	size.setReadOnly(bReadOnly);
	
	local bSection3 = false;
	if WindowManager.callSafeControlUpdate(self, "skills", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "items", bReadOnly) then bSection3 = true; end;
	if WindowManager.callSafeControlUpdate(self, "languages", bReadOnly) then bSection = true; end;
	divider2.setVisible(bSection3);
end

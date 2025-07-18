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

	local bSection3 = false;
	if WindowManager.callSafeControlUpdate(self, "trigger", bReadOnly) then bSection3 = true; end;
	local bSection4 = false;
	if WindowManager.callSafeControlUpdate(self, "effect", bReadOnly) then bSection3 = true; end;
	local bSection4 = false;
	if WindowManager.callSafeControlUpdate(self, "special", bReadOnly) then bSection3 = true; end;
	local bSection5 = false;
	if WindowManager.callSafeControlUpdate(self, "class", bReadOnly) then bSection5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "subclass", bReadOnly) then bSection5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ancestry", bReadOnly) then bSection5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_cost", bReadOnly) then bSection5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "ability_level", bReadOnly) then bSection5 = true; end;
	if WindowManager.callSafeControlUpdate(self, "abilitytype", bReadOnly) then bSection5 = true; end;

	divider2.setVisible(bSection2);
	divider3.setVisible(bSection3);
	divider4.setVisible(bSection4);
	divider5.setVisible(bSection5);

	WindowManager.callSafeControlUpdate(self, "characteristic_label", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "characteristic_old", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier1", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier2", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "tier3", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "keywords", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "distance", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "type", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "target", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "trigger", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "effect", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "special", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "class", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "subclass", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ancestry", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_cost", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "ability_level", bReadOnly);
	WindowManager.callSafeControlUpdate(self, "abilitytype", bReadOnly);
	
	notes.setReadOnly(bReadOnly);
end

-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	ItemManager.setCustomCharAdd(onCharItemAdd);

	if Session.IsHost then
		CharInventoryManager.enableInventoryUpdates();
		CharInventoryManager.enableSimpleLocationHandling();
	end
end

function onCharItemAdd(nodeItem)
	DB.setValue(nodeItem, "carried", "number", 1);
end

function resetHealth(nodeChar, bLong)
	local bResetWounds = false;
	
	-- Reset health fields and conditions
	if bResetWounds then
		DB.setValue(nodeChar, "stamina", "number", 0);
	end
end
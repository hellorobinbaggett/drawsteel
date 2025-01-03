-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function encodeDesktopMods(rRoll)
	local nMod = 0;
	
	if ModifierManager.getKey("EDGE") then
		nMod = 2;
        rRoll.sDesc = rRoll.sDesc .. " [Edge]";
	end
	if ModifierManager.getKey("BANE") then
		nMod = -2;
        rRoll.sDesc = rRoll.sDesc .. " [Bane]";
	end
	if ModifierManager.getKey("DOUBLEEDGE") then
        rRoll.sDesc = rRoll.sDesc .. " [Double Edge]";
	end
	if ModifierManager.getKey("DOUBLEBANE") then
        rRoll.sDesc = rRoll.sDesc .. " [Double Bane]";
	end
	if ModifierManager.getKey("SKILL") then
		nMod = nMod + 2;
        rRoll.sDesc = rRoll.sDesc .. " [Skill]";
	end
	
	if nMod == 0 then
		return;
	end
	
	rRoll.nMod = rRoll.nMod + nMod;
	rRoll.sDesc = rRoll.sDesc .. string.format(" [%+d]", nMod);
end
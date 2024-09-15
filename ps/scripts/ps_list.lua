-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	Debug.console("list_psmain_helper: ps/scripts/ps_list.lua - DEPRECATED - 2023-12-12 - Use PartyManager.onDrop instead");
end
function onDrop(x, y, draginfo)
	return PartyManager.onDrop(draginfo);
end

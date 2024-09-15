-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	if Session.IsHost then
		registerMenuItem(Interface.getString("menu_initclear"), "turn", 7);

		registerMenuItem(Interface.getString("ct_menu_itemdelete"), "delete", 3);
		registerMenuItem(Interface.getString("ct_menu_itemdeletenonfriendly"), "delete", 3, 1);
		registerMenuItem(Interface.getString("ct_menu_itemdeletefoe"), "delete", 3, 3);

		registerMenuItem(Interface.getString("ct_menu_effectdelete"), "hand", 5);
		registerMenuItem(Interface.getString("ct_menu_effectdeleteall"), "pointer_circle", 5, 7);
		registerMenuItem(Interface.getString("ct_menu_effectdeleteexpiring"), "pointer_cone", 5, 5);
	end
end

function onClickDown(button, x, y)
	return true;
end
function onClickRelease(button, x, y)
	if button == 1 then
		Interface.openRadialMenu();
		return true;
	end
end

function onMenuSelection(selection, subselection)
	if Session.IsHost then
		if selection == 7 then
			CombatManager.resetInit();
		end
		if selection == 5 then
			if subselection == 7 then
				CombatManager.resetCombatantEffects();
			elseif subselection == 5 then
				CombatManager2.clearExpiringEffects();
			end
		end
		if selection == 3 then
			if subselection == 1 then
				CombatManager.deleteNonFaction("friend");
			elseif subselection == 3 then
				CombatManager.deleteFaction("foe");
			end
		end
	end
end
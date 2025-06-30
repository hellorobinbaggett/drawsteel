--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

function onInit()
	setColor(ColorManager.getButtonTextColor());
	if Session.IsHost then
		registerMenuItem(Interface.getString("ct_menu_initmenu"), "turn", 7);
		registerMenuItem(Interface.getString("ct_menu_initclear"), "pointer_circle", 7, 4);

		registerMenuItem(Interface.getString("ct_menu_itemdelete"), "delete", 3);
		registerMenuItem(Interface.getString("ct_menu_itemdeletenonfriendly"), "delete", 3, 1);
	end
end

function onClickDown()
	return true;
end
function onClickRelease(button)
	if button == 1 then
		Interface.openContextMenu();
		return true;
	end
end

function onMenuSelection(selection, subselection)
	if Session.IsHost then
		if selection == 7 then
			if subselection == 4 then
				CombatManagerDS.resetInit();
			end
		elseif selection == 3 then
			if subselection == 1 then
				CombatManagerDS.deleteNonFaction("friend");
                CombatManagerDS.deleteFaction("foe");
			end
		end
	end
end

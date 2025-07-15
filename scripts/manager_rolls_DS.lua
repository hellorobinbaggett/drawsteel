function saveRoll(rMessage, rRoll)

	if rRoll.aDice[1].result > 5 then
		rMessage.text = tostring(rMessage.text) .. " Success! [Effect Ends]";
		-- remove condition
		Debug.chat();
	else
		rMessage.text = tostring(rRoll.sDesc) .. " Failure [Effect Continues]";
	end
	
	return rMessage;
end

function resourceRoll(rMessage, rRoll)   
    -- local nodeWin = window.getDatabaseNode();
	-- local sCharSheetID = DB.getPath(DB.getChild(nodeWin, '...'));
	-- local CharSheetID = DB.findNode(sCharSheetID);

	-- local result = rRoll.aDice[1].result;
    -- local classresource = DB.getValue(CharSheetID, "classresource");
    -- Debug.chat(classresource);

    -- local total = result + classresource;

    -- Debug.chat(total);

    return true;
end
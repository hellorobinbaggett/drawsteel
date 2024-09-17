function powerRoll(rMessage, rRoll)

    -- set crit threshold for power roll
	local nCritThreshold = 19;

	-- check to see if any edge/bane desktop buttons are pressed
	ActionsManager.encodeDesktopMods(rRoll);

	-- if 2d10 are rolled, it is a power roll.
	if rRoll.aDice.expr == "2d10" then
		local powerRollTotal = rRoll.aDice[1].result + rRoll.aDice[2].result;	
		local powerRollTotalMod = ActionsManager.total(rRoll);	

		-- add +2 if edge is applied
		if string.match(rRoll.sDesc, "Edge") then
			powerRollTotalMod = powerRollTotalMod + 2;
		end

		-- add -2 if bane is applied
		if string.match(rRoll.sDesc, "Bane") then
			powerRollTotalMod = powerRollTotalMod -2;
		end

		-- write in chat what tier result it is
		if powerRollTotalMod <= 11 then
			rMessage.text = "Power Roll: TIER 1\n" .. tostring(rRoll.sDesc);
		elseif powerRollTotalMod >= 17 then
			rMessage.text = "Power Roll: TIER 3\n" .. tostring(rRoll.sDesc);
		elseif powerRollTotalMod == powerRollTotalMod then
			rMessage.text = "Power Roll: TIER 2\n" .. tostring(rRoll.sDesc);
		end

		-- check for double edges
		if string.match(rRoll.sDesc, "Double Edge") then
			if powerRollTotalMod <= 11 then
				rMessage.text = "Power Roll: TIER 2\n" .. tostring(rRoll.sDesc);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = "Power Roll: TIER 3\n" .. tostring(rRoll.sDesc);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = "Power Roll: TIER 3\n" .. tostring(rRoll.sDesc);
			end
		end

		-- check for double banes
		if string.match(rRoll.sDesc, "Double Bane") then
			if powerRollTotalMod <= 11 then
				rMessage.text = "Power Roll: TIER 1\n" .. tostring(rRoll.sDesc);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = "Power Roll: TIER 2\n" .. tostring(rRoll.sDesc);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = "Power Roll: TIER 1\n" .. tostring(rRoll.sDesc);
			end
		end

		-- check for critical hits and natural 20s
		if powerRollTotal == nCritThreshold then
			rMessage.text = tostring(rMessage.text) .. "\n[CRITICAL HIT]";
		end
		-- natural 20s are always Tier 3 no matter what modifiers or banes present
		if powerRollTotal > nCritThreshold then
			rMessage.text = tostring(rRoll.sDesc) .. "\nPower Roll: Automatic TIER 3\n[CRITICAL HIT]\n[NATURAL 20]";
		end

	end

	-- -- if 1d3 is rolled, it is for RAGE!
	-- if rRoll.aDice.expr == "d3" then
	-- 	rMessage.text = "[Heroic Resource: Rage] " .. tostring(rRoll.sDesc);
	-- end

	-- -- roll for initiative
	-- if rMessage.text == "Draw Steel!" then
	-- 	if rRoll.aDice[1].result > 5 then
	-- 		rMessage.text = rMessage.text .. " [INITIATIVE ROLL: Heroes go first!]";
	-- 	elseif rRoll.aDice[1].result < 6 then
	-- 		rMessage.text = rMessage.text .. " [INITIATIVE ROLL: Villains go first!]";
	-- 	end
	-- end
	
	return rMessage;
end
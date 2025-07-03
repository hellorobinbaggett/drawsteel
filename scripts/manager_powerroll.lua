function powerRoll(rMessage, rRoll)

    -- set crit threshold for power roll
	local nCritThreshold = 19;

	-- check to see if any edge/bane desktop buttons are pressed
	ActionsManager_DS.encodeDesktopMods(rRoll);

	if rRoll.t1 == nill then
		rRoll.t1 = "";
	end
	if rRoll.t2 == nill then
		rRoll.t2 = "";
	end
	if rRoll.t3 == nill then
		rRoll.t3 = "";
	end
	if rRoll.effect == nill then
		rRoll.effect = "";
	end

	-- if 2d10 are rolled, it is a power roll.
	if string.match(rRoll.aDice.expr, "2d10") then
		local powerRollTotal = rRoll.aDice[1].result + rRoll.aDice[2].result;	
		local powerRollTotalMod = ActionsManager.total(rRoll);

		-- write in chat what tier result it is
		if powerRollTotalMod <= 11 then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n\n" .. tostring(rRoll.effect);
		elseif powerRollTotalMod >= 17 then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
		elseif powerRollTotalMod == powerRollTotalMod then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n\n" .. tostring(rRoll.effect);
		end

		-- check for double edges
		if string.match(rRoll.sDesc, "Double Edge") then
			if powerRollTotalMod <= 11 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
			end
		end

		-- check for double baness
		if string.match(rRoll.sDesc, "Double Bane") then
			if powerRollTotalMod <= 11 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n" .. tostring(rRoll.effect);
			end
		end

		-- check for critical hits and natural 20s
		if powerRollTotal == nCritThreshold then
			rMessage.text = tostring(rMessage.text) .. "\n[CRITICAL]";
		end
		-- natural 20s are always Tier 3 no matter what modifiers or banes present
		if powerRollTotal > nCritThreshold then
			rMessage.text = tostring(rRoll.sDesc) .. "\nPower Roll: Automatic TIER 3\n[CRITICAL]\n[NATURAL 20]";
		end
	end
	if string.match(rRoll.aDice.expr, "2dj10") then
		local powerRollTotal = rRoll.aDice[1].result + rRoll.aDice[2].result;	
		local powerRollTotalMod = ActionsManager.total(rRoll);

		-- write in chat what tier result it is
		if powerRollTotalMod <= 11 then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n\n" .. tostring(rRoll.effect);
		elseif powerRollTotalMod >= 17 then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
		elseif powerRollTotalMod == powerRollTotalMod then
			rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n\n" .. tostring(rRoll.effect);
		end

		-- check for double edges
		if string.match(rRoll.sDesc, "Double Edge") then
			if powerRollTotalMod <= 11 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 3: \n" .. tostring(rRoll.t3) .. "\n\n" .. tostring(rRoll.effect);
			end
		end

		-- check for double baness
		if string.match(rRoll.sDesc, "Double Bane") then
			if powerRollTotalMod <= 11 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod >= 17 then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 2: \n" .. tostring(rRoll.t2) .. "\n" .. tostring(rRoll.effect);
			elseif powerRollTotalMod == powerRollTotalMod then
				rMessage.text = tostring(rRoll.sDesc) .. "\nTIER 1: \n" .. tostring(rRoll.t1) .. "\n" .. tostring(rRoll.effect);
			end
		end

		-- check for critical hits and natural 20s
		if powerRollTotal == nCritThreshold then
			rMessage.text = tostring(rMessage.text) .. "\n[CRITICAL]";
		end
		-- natural 20s are always Tier 3 no matter what modifiers or banes present
		if powerRollTotal > nCritThreshold then
			rMessage.text = tostring(rRoll.sDesc) .. "\nPower Roll: Automatic TIER 3\n[CRITICAL]\n[NATURAL 20]";
		end

	end
	
	return rMessage;
end
-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	CombatManager.setCustomSort(CombatManager.sortfuncStandard);
	CombatManager.setCustomCombatReset(resetInit);

	ActorCommonManager.setRecordTypeSpaceReachCallback("npc", ActorCommonManager.getSpaceReachCore);
	ActorCommonManager.setRecordTypeSpaceReachCallback("vehicle", ActorCommonManager.getSpaceReachCore);
end

--
-- TURN FUNCTIONS
--

function onRoundStart(nCurrent)
	if OptionsManager.isOption("HRIR", "on") then
		CombatManager.resetInit();
	end
end

function rollInit(sType)
	CombatManager.rollTypeInit(sType, CombatManager2.rollEntryInit);
end
function rollEntryInit(nodeEntry)
	CombatManager.resetCombatantInit(CombatManager2.getEntryInitRecord(nodeEntry));
end
function getEntryInitRecord(nodeEntry)
	if not nodeEntry then
		return nil;
	end

	local tInit = { nodeEntry = nodeEntry };

	-- Start with the base initiative bonus
	tInit.nMod = DB.getValue(nodeEntry, "init", 0);
	
	-- Get any effect modifiers
	local rActor = ActorManager.resolveActor(nodeEntry);
	local bEffects, aEffectDice, nEffectMod, bEffectADV, bEffectDIS = ActionInit.getEffectAdjustments(rActor);
	if bEffects then
		tInit.nMod = tInit.nMod + StringManager.evalDice(aEffectDice, nEffectMod);
		if bEffectADV then
			tInit.bADV = true;
		end
		if bEffectDIS then
			tInit.bDIS = true;
		end
	end

	tInit.fnRollRandom = CombatManager2.rollRandomInit;

	return tInit;
end
function rollRandomInit(tInit)
	local nInitResult = math.random(20);
	if tInit.bADV and not tInit.bDIS then
		nInitResult = math.max(nInitResult, math.random(20));
	elseif tInit.bDIS and not tInit.bADV then
		nInitResult = math.min(nInitResult, math.random(20));
	end
	return nInitResult + (tInit.nMod or 0);
end

--
-- RESET FUNCTIONS
--

function resetInit()
	function resetCombatantInit(nodeCT)
		DB.setValue(nodeCT, "initresult", "number", 0);
		DB.setValue(nodeCT, "reaction", "number", 0);
	end
	CombatManager.callForEachCombatant(resetCombatantInit);
end

function rollInit(sType)
	CombatManager.rollTypeInit(sType, CombatManager2.rollEntryInit);
end
function rollEntryInit(nodeEntry)
	CombatManager.rollStandardEntryInit(CombatManager2.getEntryInitRecord(nodeEntry));
end
function getEntryInitRecord(nodeEntry)
	if not nodeEntry then
		return nil;
	end

	local tInit = { nodeEntry = nodeEntry };

	-- Start with the base initiative bonus
	tInit.nMod = DB.getValue(nodeEntry, "init", 0);
	
	-- Get any effect modifiers
	local rActor = ActorManager.resolveActor(nodeEntry);
	local bEffects, aEffectDice, nEffectMod, bEffectADV, bEffectDIS = ActionInit.getEffectAdjustments(rActor);
	if bEffects then
		tInit.nMod = tInit.nMod + StringManager.evalDice(aEffectDice, nEffectMod);
		if bEffectADV then
			tInit.bADV = true;
		end
		if bEffectDIS then
			tInit.bDIS = true;
		end
	end

	tInit.fnRollRandom = CombatManager2.rollRandomInit;

	return tInit;
end
function rollRandomInit(tInit)
	local nInitResult = math.random(20);
	if tInit.bADV and not tInit.bDIS then
		nInitResult = math.max(nInitResult, math.random(20));
	elseif tInit.bDIS and not tInit.bADV then
		nInitResult = math.min(nInitResult, math.random(20));
	end
	return nInitResult + (tInit.nMod or 0);
end
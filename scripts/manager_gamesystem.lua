-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

-- Ruleset action types
actions = {
	["dice"] = { bUseModStack = "true" },
	["table"] = { },
	["effect"] = { sIcon = "action_effect", sTargeting = "all" },
};

targetactions = {
	"effect",
};

currencies = { };
currencyDefault = nil;

-- Several rulesets inherit from this one: AFF2, Fate Core, ICONS
function onInit()
	CharEncumbranceManager.addStandardCalc();
	CombatListManager.registerStandardInitSupport();
	
	languages = { 
		-- Standard languages
		[Interface.getString("language_value_caelian")] = "",
		[Interface.getString("language_value_anjali")] = "",
		[Interface.getString("language_value_filliaric")] = "",
		[Interface.getString("language_value_higaran")] = "",
		[Interface.getString("language_value_hyrallic")] = "",
		[Interface.getString("language_value_kalliak")] = "",
		[Interface.getString("language_value_kethaic")] = "",
		[Interface.getString("language_value_khelt")] = "",
		[Interface.getString("language_value_khemaric")] = "",
		[Interface.getString("language_value_khoursirian")] = "",
		[Interface.getString("language_value_kuric")] = "",
		[Interface.getString("language_value_mindspeech")] = "",
		[Interface.getString("language_value_oaxuatl")] = "",
		[Interface.getString("language_value_phaedran")] = "",
		[Interface.getString("language_value_protoctholl")] = "",
		[Interface.getString("language_value_riojan")] = "",
		[Interface.getString("language_value_szetch")] = "",
		[Interface.getString("language_value_thefirstlanguage")] = "",
		[Interface.getString("language_value_urollialic")] = "",
		[Interface.getString("language_value_uvalic")] = "",
		[Interface.getString("language_value_vanric")] = "",
		[Interface.getString("language_value_variac")] = "",
		[Interface.getString("language_value_voll")] = "",
		[Interface.getString("language_value_xakalliac")] = "",
		[Interface.getString("language_value_yllyric")] = "",
		[Interface.getString("language_value_zaliac")] = "",
	}
	languagefonts = {
	}
end

function getCharSelectDetailHost(nodeChar)
	return "";
end

function requestCharSelectDetailClient()
	return "name";
end

function receiveCharSelectDetailClient(vDetails)
	return vDetails, "";
end

function getDistanceUnitsPerGrid()
	return 1;
end

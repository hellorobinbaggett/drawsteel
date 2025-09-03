--
-- Please see the license.html file included with this distribution for
-- attribution and copyright information.
--

-- Ruleset action types
actions = {
	["dice"] = { bUseModStack = true },
	["table"] = { },
	["powerroll"] = { sTargeting = "each" },
	["save"] = { sTargeting = "each" },
	["death"] = { bUseModStack = true },
	["death_auto"] = { },
	["damage"] = { sIcon = "action_damage", sTargeting = "all", bUseModStack = true },
	["heal"] = { sIcon = "action_heal", sTargeting = "all", bUseModStack = true },
    ["effect"] = { sIcon = "action_effect", sTargeting = "all" },
};

targetactions = {
	"cast",
	"powersave",
	"attack",
	"damage",
	"heal",
	"effect"
};

currencyDefault = "GP";

function onInit()

	-- Languages
	languages = {
		-- Human languages
		[Interface.getString("language_value_uvalic")] = "",
        [Interface.getString("language_value_higaran")] = "",
        [Interface.getString("language_value_oaxuatl")] = "",
        [Interface.getString("language_value_khemaric")] = "",
        [Interface.getString("language_value_khoursirian")] = "",
        [Interface.getString("language_value_phaedran")] = "",
        [Interface.getString("language_value_riojan")] = "",
        [Interface.getString("language_value_vanric")] = "",
        [Interface.getString("language_value_vaslorian")] = "",
        -- Standard languages
        [Interface.getString("language_value_anjali")] = "",
        [Interface.getString("language_value_axiomatic")] = "",
        [Interface.getString("language_value_caelian")] = "",
        [Interface.getString("language_value_filliaric")] = "",
        [Interface.getString("language_value_thefirstlanguage")] = "",
        [Interface.getString("language_value_hyrallic")] = "",
        [Interface.getString("language_value_illyvric")] = "",
        [Interface.getString("language_value_kalliak")] = "",
        [Interface.getString("language_value_kethaic")] = "",
        [Interface.getString("language_value_khelt")] = "",
        [Interface.getString("language_value_khoursirian")] = "",
        [Interface.getString("language_value_highkuric")] = "",
        [Interface.getString("language_value_lowkuric")] = "",
        [Interface.getString("language_value_mindspeech")] = "",
        [Interface.getString("language_value_protoctholl")] = "",
        [Interface.getString("language_value_szetch")] = "",
        [Interface.getString("language_value_tholl")] = "",
        [Interface.getString("language_value_urollialic")] = "",
        [Interface.getString("language_value_variac")] = "",
        [Interface.getString("language_value_vastariax")] = "",
        [Interface.getString("language_value_vhoric")] = "",
        [Interface.getString("language_value_voll")] = "",
        [Interface.getString("language_value_yllyric")] = "",
        [Interface.getString("language_value_zahariax")] = "",
        [Interface.getString("language_value_zaliac")] = "",

		-- Exotic languages
		[Interface.getString("language_value_ananjali")] = "Infernal",
        [Interface.getString("language_value_high_rhyvian")] = "Infernal",
        [Interface.getString("language_value_khamish")] = "Infernal",
        [Interface.getString("language_value_kheltivari")] = "Infernal",
        [Interface.getString("language_value_low_rhyvian")] = "Infernal",
        [Interface.getString("language_value_old_variac")] = "Infernal",
        [Interface.getString("language_value_phorialtic")] = "Infernal",
        [Interface.getString("language_value_rallarian")] = "Infernal",
        [Interface.getString("language_value_ullorvic")] = "Infernal",

	};
	-- languagefonts = {
    --     This is where fonts go
	-- 	[Interface.getString("language_value_celestial")] = "Celestial",
	-- };
	languagestandard = {
		Interface.getString("language_value_caelian"),

	};
end

function getCharSelectDetailHost(nodeChar)
	local sValue = "";
	local nLevel = DB.getValue(nodeChar, "level", 0);
	if nLevel > 0 then
		sValue = "Level " .. math.floor(nLevel*100)*0.01;
	end
	return sValue;
end

function requestCharSelectDetailClient()
	return "name,#level";
end

function receiveCharSelectDetailClient(vDetails)
	return vDetails[1], "Level " .. math.floor(vDetails[2]*100)*0.01;
end

function getPregenCharSelectDetail(nodePregenChar)
	return CharManager.getClassSummary(nodePregenChar);
end

function getDistanceUnitsPerGrid()
	return 1;
end
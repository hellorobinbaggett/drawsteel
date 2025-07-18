-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

-- Values supported in effect conditionals
conditionaltags = {
	"bleeding", 
	"dazed",
	"frightened",
	"grabbed",
	"prone",
	"restrained", 
	"slowed", 
	"weakened",
	-- psuedo conditions
	"covered",
	"concealed",
	"dead",
	"defending",
	"dying",
	"falling",
	"flanking",
	"hidden",
	"high ground",
	"invisible",
	"sneaking",
	"unconscious",
	"winded",
	"marked",
	"judged",
	"burning",
	"hidden",
	"submerged",
	"captain"
};

-- Conditions supported in effect conditionals and for token widgets
-- (Also shown in Effects window)
conditions = {
	"bleeding", 
	"dazed",
	"frightened",
	"grabbed",
	"prone",
	"restrained", 
	"slowed", 
	"taunted",
	"weakened",
	"marked",
	"judged",
	"burning",
	"hidden",
	"submerged",
	"captain"
};

-- Condition effect types for token widgets
condcomps = {
	["bleeding"] = "cond_bleeding", 
	["dazed"] = "cond_dazed",
	["frightened"] = "cond_frightened",
	["grabbed"] = "cond_grappled",
	["prone"] = "cond_prone",
	["restrained"] = "cond_restrained",
	["slowed"] = "cond_slowed",
	["weakened"] = "cond_weakened",
	["taunted"] = "cond_surprised",
	-- psuedo conditions
	["marked"] = "cond_pinned",
	["judged"] = "cond_turned",
	["burning"] = "cond_conceal",
	["hidden"] = "cond_invisible",
	["submerged"] = "cond_generic",
	["captain"] = "cond_helpless"
};

-- Other visible effect types for token widgets
othercomps = {
	["COVER"] = "cond_cover",
	["SCOVER"] = "cond_cover",
	["IMMUNE"] = "cond_immune",
	["RESIST"] = "cond_resistance",
	["VULN"] = "cond_vulnerable",
	["REGEN"] = "cond_regeneration",
	["DMGO"] = "cond_bleed",
	-- ADV
	["ADVATK"] = "cond_advantage",
	["ADVCHK"] = "cond_advantage",
	["ADVSKILL"] = "cond_advantage",
	["ADVINIT"] = "cond_advantage",
	["ADVSAV"] = "cond_advantage",
	["ADVDEATH"] = "cond_advantage",
	["GRANTDISATK"] = "cond_advantage",
	-- DIS
	["DISATK"] = "cond_disadvantage",
	["DISCHK"] = "cond_disadvantage",
	["DISSKILL"] = "cond_disadvantage",
	["DISINIT"] = "cond_disadvantage",
	["DISSAV"] = "cond_disadvantage",
	["DISDEATH"] = "cond_disadvantage",
	["GRANTADVATK"] = "cond_disadvantage",
};

-- Effect components which can be targeted
targetableeffectcomps = {
	"COVER",
	"SCOVER",
	"AC",
	"SAVE",
	"ATK",
	"DMG",
	"IMMUNE",
	"VULN",
	"RESIST"
};

connectors = {
	"and",
	"or"
};

-- Range types supported
rangetypes = {
	"melee",
	"ranged"
};


function onInit()
end

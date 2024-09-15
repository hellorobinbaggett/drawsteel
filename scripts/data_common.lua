-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

-- Values supported in effect conditionals
conditionaltags = {
	"blinded", 
	"charmed",
	"cursed",
	"deafened",
	"encumbered",
	"frightened", 
	"grappled", 
	"incapacitated",
	"intoxicated",
	"invisible", 
	"paralyzed",
	"petrified",
	"poisoned",
	"prone", 
	"restrained",
	"stable", 
	"stunned",
	"turned",
	"unconscious",
	"bleeding", 
	"dazed",
	"grabbed", 
	"slowed", 
	"taunted",
	"taunter",
	"weakened",
	"dying",
	"edge",
	"double edge",
	"bane",
	"double bane"
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
	"taunter",
	"weakened",
	"dying",
	"dead",
	"edge",
	"double edge",
	"bane",
	"double bane"
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
	["taunted"] = "cond_surprised",
	["taunter"] = "cond_cover",
	["weakened"] = "cond_weakened",
	["dying"] = "cond_dying",
	["dead"] = "cond_dead",
	["edge"] = "cond_edge",
	["double edge"] = "cond_doubleedge",
	["bane"] = "cond_bane",
	["double bane"] = "cond_doublebane",

	--effects but they are actually indescipherable
	-- ["bleeding"] = "er_cond_bleeding", 
	-- ["dazed"] = "er_cond_dazed",
	-- ["frightened"] = "er_cond_frightened",
	-- ["grabbed"] = "er_cond_grabbed",
	-- ["prone"] = "er_cond_prone",
	-- ["restrained"] = "er_cond_restrained",
	-- ["slowed"] = "er_cond_slowed",
	-- ["taunted"] = "er_cond_taunted",
	-- ["taunter"] = "er_cond_taunter",
	-- ["weakened"] = "er_cond_weakened",
	-- ["dying"] = "er_cond_dying",

	-- Similar to conditions
	["cover"] = "cond_cover",
	["scover"] = "cond_cover",
	-- ADV
	["advatk"] = "cond_advantage",
	["advchk"] = "cond_advantage",
	["advskill"] = "cond_advantage",
	["advinit"] = "cond_advantage",
	["advsav"] = "cond_advantage",
	["advdeath"] = "cond_advantage",
	["grantdisatk"] = "cond_advantage",
	-- DIS
	["disatk"] = "cond_disadvantage",
	["dischk"] = "cond_disadvantage",
	["disskill"] = "cond_disadvantage",
	["disinit"] = "cond_disadvantage",
	["dissav"] = "cond_disadvantage",
	["disdeath"] = "cond_disadvantage",
	["grantadvatk"] = "cond_disadvantage",
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

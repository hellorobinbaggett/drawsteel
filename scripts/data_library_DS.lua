
aRecordOverrides = {
	-- CoreRPG overrides
	["npc"] = { 
		bExport = true,
		bID = true,
		aDataMap = { "npc", "reference.npcs" }, 
		sListDisplayClass = "masterindexitem_id",
		-- sRecordDisplayClass = "npc", 
		aGMEditButtons = { "button_add_npc_import" },
		aCustom = {
			tWindowMenu = { ["left"] = { "chat_speak" } },
		},
		aCustomFilters = {
			["Level"] = { sField = "level_name" },
			["Role"] = { sField = "role_name_label" },
			-- TODO: make npc keywords useful
			-- ["Keywords"] = { sField = "keywords_name" },
		},
	},
	["ability"] = {
		bExport = true,
		aDataMap = { "ability", "reference.abilities" },
		aCustomFilters = {
			["Class"] = { sField = "class" },
			["Subclass"] = { sField = "subclass" },
			["Type"] = { sField = "abilitytype" },
			["Cost"] = { sField = "cost" },
			["Level"] = { sField = "level" },
		},
	},
	-- ["ancestry"] = {
	-- 	aDataMap = { "ancestry", "reference.ancestries" },
	-- },
	-- ["class"] = {
	-- 	aDataMap = { "class", "reference.classes" },
	-- },
};

aListViews = {
	["ability"] = {
		["byclass"] = {
			aColumns = {
				{ sName = "cost", sType = "string", sHeadingRes = "ability_grouped_label_cost", nWidth=200 },
				{ sName = "name", sType = "string", sHeadingRes = "ability_grouped_label_name", nWidth=200 },
			},
			aFilters = {},
			aGroups = { { sDBField = "class" } },
			aGroupValueOrder = {},
		},
	},
};

function onInit()
	LibraryData.overrideRecordTypes(aRecordOverrides);
	LibraryData.setRecordViews(aListViews);
	LibraryData.setRecordTypeInfo("vehicle", nil);
end
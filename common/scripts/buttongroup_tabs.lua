-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

local DEFAULT_TAB_SIZE = 67;
local DEFAULT_TAB_MARGINS = 25;

local DEFAULT_VERTICAL_OFFSETX = 7;
local DEFAULT_VERTICAL_OFFSETY = 41;
local DEFAULT_VERTICAL_HELPER_OFFSETX = 8;
local DEFAULT_VERTICAL_HELPER_OFFSETY = 7;

local DEFAULT_DISABLED_ALPHA = "80";

local bHorizontal = false;
local aVerticalHelperIconOffset = { DEFAULT_VERTICAL_HELPER_OFFSETX, DEFAULT_VERTICAL_HELPER_OFFSETY };
local aHorizontalHelperIconOffset = { 7,10 };
local aVerticalTabIconOffset = { DEFAULT_VERTICAL_OFFSETX, DEFAULT_VERTICAL_OFFSETY };
local aHorizontalTabTextOffset = { 41,8 };
local nTabSize = DEFAULT_TAB_SIZE;
local nMargins = DEFAULT_TAB_MARGINS;
local sDisabledAlpha = DEFAULT_DISABLED_ALPHA;

function onInit()
	self.parseSettings();
	self.createTopWidget();
	self.parseTabs();
end
function parseSettings()
	if horizontal then
		bHorizontal = true;
	end
	if tabsize then
		nTabSize = tonumber(tabsize[1]) or DEFAULT_TAB_SIZE;
	end
	if tabmargins then
		nMargins = tonumber(tabmargins[1]) or DEFAULT_TAB_MARGINS;
	end
	if tabverticaloffsetx then
		aVerticalTabIconOffset[1] = tonumber(tabverticaloffsetx[1]) or DEFAULT_VERTICAL_OFFSETX;
	end
	if tabverticaloffsety then
		aVerticalTabIconOffset[2] = tonumber(tabverticaloffsety[1]) or DEFAULT_VERTICAL_OFFSETY;
	end
	if tabverticalhelperoffsetx then
		aVerticalHelperIconOffset[1] = tonumber(tabverticalhelperoffsetx[1]) or DEFAULT_VERTICAL_HELPER_OFFSETX;
	end
	if tabverticalhelperoffsety then
		aVerticalHelperIconOffset[2] = tonumber(tabverticalhelperoffsety[1]) or DEFAULT_VERTICAL_HELPER_OFFSETY;
	end
	if disabledalpha then
		sDisabledAlpha = disabledalpha[1] or DEFAULT_DISABLED_ALPHA;
	end
end
function parseTabs()
	local tTabs = {};
	if tab and type(tab) == "table" then
		local nActivate = 1;
		if activate then
			nActivate = tonumber(activate[1]) or 1;
		end

		for k, v in ipairs(tab) do
			if type(v) == "table" then
				local tData = { sName = v.subwindow[1], };
				if bHorizontal then
					if v.textres then
						tData.sTextRes = v.textres[1];
					elseif v.text then
						tData.sText = v.text[1];
					end
				else
					tData.sIcon = v.icon[1];
				end
				if k == nActivate then
					tData.bActivate = true;
				end
				table.insert(tTabs, tData);
			end
		end
	end
	self.setTabsData(tTabs);
end

local _nIndex = 0;
function getIndex()
	return _nIndex;
end
function setIndex(n)
	_nIndex = n;
end

local _tTabs = {};
function getTabCount()
	return #_tTabs;
end
function getTabData(n)
	return _tTabs[n];
end
function setTabData(n, tData)
	if not tData then
		self.clearTabData(n);
		return;
	end

	if n == self.getIndex() then
		self.deactivateTabEntry(n);
	end
	WindowTabManager.cleanupTabDisplay(window, _tTabs[n], tData);

	_tTabs[n] = UtilityManager.copyDeep(tData);
	self.updateTabWidget(n, tData);

	WindowTabManager.updateTabDisplay(w, tData);
	if n == self.getIndex() then
		self.activateTabEntry(n);
	end
end
function clearTabData(n)
	_tTabs[n] = nil;
	self.cleanupTabWidget(n);
end
function getTabsData()
	return _tTabs;
end
function setTabsData(tTabs)
	if not tTabs then
		return;
	end

	self.deactivateTabEntry(self.getIndex());
	self.setIndex(0);

	local nActivate = 1;
	local nCount = math.max(self.getTabCount(), #tTabs);
	for i = 1, nCount do
		local t = tTabs[i];
		if t then
			self.setTabData(i, t);
			if t.bActivate then
				nActivate = i;
			end
			self.deactivateTabEntry(i)
		else
			self.clearTabData(i);
		end
	end

	self.updateDisplay();
	self.activateTab(nActivate);
end

function activateTab(n)
	local nCurrIndex = self.getIndex();
	local nNewIndex = tonumber(n) or 1;
	if nCurrIndex == nNewIndex then
		return;
	end
	
	self.deactivateTabEntry(nCurrIndex);
	self.setIndex(nNewIndex);
	self.activateTabEntry(nNewIndex);

	self.updateTopWidget();
end
function activateTabEntry(n)
	if n >= 1 and n <= self.getTabCount() then
		WindowTabManager.updateTabDisplay(window, self.getTabData(n), true);
		WindowTabManager.setTabDisplayVisible(window, self.getTabData(n), true);
	end
	self.updateTabWidgetsDisplay();
end
function deactivateTabEntry(n)
	if n >= 1 and n <= self.getTabCount() then
		WindowTabManager.setTabDisplayVisible(window, self.getTabData(n), false);
	end
end

function getTopWidget()
	return findWidget("tabtop");
end
function createTopWidget()
	if self.getTopWidget() then
		return;
	end

	if bHorizontal then
		addBitmapWidget({ name = "tabtop", icon = "tabtop_h" }).setVisible(false);
	else
		addBitmapWidget({ name = "tabtop", icon = "tabtop" }).setVisible(false);
	end
end
function updateTopWidget()
	local wgt = self.getTopWidget();
	if not wgt then
		return;
	end

	local nIndex = self.getIndex();
	if bHorizontal then
		wgt.setPosition("topleft", (nTabSize * (nIndex - 1)) + aHorizontalHelperIconOffset[1], aHorizontalHelperIconOffset[2]);
	else
		wgt.setPosition("topleft", aVerticalHelperIconOffset[1], (nTabSize * (nIndex - 1)) + aVerticalHelperIconOffset[2]);
	end
	if nIndex == 1 then
		wgt.setVisible(false);
	else
		wgt.setVisible(true);
	end
end
function getTabWidget(n)
	return findWidget("tab" .. n);
end
function updateTabWidget(n, tData)
	local wgt = self.getTabWidget(n);
	if not wgt then
		if bHorizontal then
			wgt = addTextWidget({ 
				name = "tab" .. n,
				font = "tabfont", text = tData.sText or Interface.getString(tData.sTextRes or tData.sTabRes), 
				position = "topleft", x = (nTabSize * (n - 1)) + aHorizontalTabTextOffset[1], y = aHorizontalTabTextOffset[2],
			});
		else
			wgt = addBitmapWidget({	
				name = "tab" .. n,
				icon = tData.sIcon or tData.sTabRes, 
				position = "topleft", x = aVerticalTabIconOffset[1], y = (nTabSize * (n - 1)) + aVerticalTabIconOffset[2],
			});
		end
	else
		if bHorizontal then
			wgt.setText(tData.sText or Interface.getString(tData.sTextRes or tData.sTabRes));
		else
			wgt.setBitmap(tData.sIcon or tData.sTabRes);
		end
	end
end
function cleanupTabWidget(n)
	local wgt = self.getTabWidget(n);
	if wgt then
		wgt.destroy();
	end
end
function updateTabWidgetsDisplay()
	local n = self.getIndex();
	for i = 1, self.getTabCount() do
		local wgt = self.getTabWidget(i);
		if wgt then
			if i == n then
				if bHorizontal then
					wgt.setColor("FF000000");
				else
					wgt.setColor("FFFFFFFF");
				end
			else
				if bHorizontal then
					wgt.setColor(sDisabledAlpha .. "000000");
				else
					wgt.setColor(sDisabledAlpha .. "FFFFFF");
				end
			end
		end
	end
end
function updateDisplay()
	local n = self.getTabCount();
	if bHorizontal then
		setAnchoredWidth(nMargins + (nTabSize * n));
	else
		setAnchoredHeight(nMargins + (nTabSize * n));
	end
	if self.getIndex() > n then
		self.activateTab(n);
	end
end

function onVisibilityChanged()
	if isVisible() then
		self.activateTabEntry(self.getIndex());
	else
		self.deactivateTabEntry(self.getIndex());
	end
end
function setVisibility(bState)
	-- DEPRECATED - TODO
	setVisible(bState);
end

function onClickDown(button, x, y)
	return true;
end
function onClickRelease(button, x, y)
	local i;
	if bHorizontal then
		local adjx = x - (aHorizontalTabTextOffset[1] - (nTabSize / 2));
		i = math.ceil(adjx / nTabSize);
	else
		local adjy = y - (aVerticalTabIconOffset[2] - (nTabSize / 2));
		i = math.ceil(adjy / nTabSize);
	end

	if i >= 1 and i <= self.getTabCount() then
		self.activateTab(i);
	end
	return true;
end
function onDoubleClick(x, y)
	-- Emulate click
	self.onClickRelease(1, x, y);
end

function replaceTabClass(n, sClass)
	local tData = self.getTabData(n);
	if not tData then
		return;
	end

	self.deactivateTabEntry(n);
	if (sClass or "") ~= "" then
		tData.sClass = sClass;
		if self.getIndex() == n then
			self.activateTabEntry(n);
		end
	else
		self.clearTabData(n);
	end
	self.updateDisplay();
end
function replaceTabClassByName(sName, sClass)
	for k,tTab in ipairs(self.getTabsData()) do
		if tTab.sName == sName then
			self.replaceTabClass(k, sClass);
			return;
		end
	end
end

--
--	Legacy Functions
--

-- Cypher
function getTab(n)
	local tData = self.getTabData(n);
	if not tData then
		return nil, nil;
	end
	if bHorizontal then
		return tData.sName, tData.sText or Interface.getString(tData.sTextRes or tData.sTabRes);
	end
	return tData.sName, tData.sIcon or tData.sTabRes;
end
-- CPR, PF2, 
function setTab(n, sSub, sDisplay)
	self.deactivateTabEntry(n);
	if sSub and sDisplay then
		local tData = { sName = sSub, sTabRes = sDisplay, };
		self.setTabData(n, tData);
		if self.getIndex() == n then
			self.activateTabEntry(n);
		end
	else
		self.clearTabData(n);
	end
	self.updateDisplay();
end
-- BRP, SW
function addTab(sSub, sDisplay, bActivate)
	local nIndex = self.getTabCount() + 1;
	local tData = { sName = sSub, sTabRes = sDisplay, };
	self.setTabData(nIndex, tData);
	self.updateDisplay();
	if bActivate then
		self.activateTab(nIndex);
	end
end
-- BoL
function hideControls(n)
	WindowTabManager.setTabDisplayVisible(window, self.getTabData(n), false);
end

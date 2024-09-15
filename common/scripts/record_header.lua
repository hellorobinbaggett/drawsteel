-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	self.initRecordTypeControls();
	self.update();
end
function initRecordTypeControls()
	if link then
		link.setValue(UtilityManager.getTopWindow(self).getClass());
	end

	local sRecordType = WindowManager.getRecordType(self);
	if name then
		if sRecordType ~= "" then
			name.setEmptyText(Interface.getString("library_recordtype_empty_" .. sRecordType));
		elseif name_emptyres then
			name.setEmptyText(Interface.getString(name_emptyres[1]));
		end
	end
	if nonid_name then
		if nonid_name_emptyres then
			nonid_name.setEmptyText(Interface.getString(nonid_name_emptyres[1]));
		end
	end
end

function onIDChanged()
	self.update();
end
-- Legacy compatibility
function updateIDState()
	self.update();
end

function update()
	local nodeRecord = getDatabaseNode();
	local bReadOnly = WindowManager.getReadOnlyState(nodeRecord);

	name.setReadOnly(bReadOnly);
	if nonid_name then
		local sRecordType = WindowManager.getRecordType(self);
		local bID = LibraryData.getIDState(sRecordType, nodeRecord);
		nonid_name.setReadOnly(bReadOnly);
		name.setVisible(bID);
		nonid_name.setVisible(not bID);
	end
	if token then
		token.setReadOnly(bReadOnly);
	end
end


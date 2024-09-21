-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	super.onInit();
	AncestryManager.updatePageSub(sub_paging, getDatabasePath());
end

function handlePageTop()
	AncestryManager.handlePageTop(self, getDatabasePath());
end
function handlePagePrev()
	AncestryManager.handlePagePrev(self, getDatabasePath());
end
function handlePageNext()
	AncestryManager.handlePageNext(self, getDatabasePath());
end

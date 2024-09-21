-- 
-- Please see the license.html file included with this distribution for 
-- attribution and copyright information.
--

function onInit()
	super.onInit();
	ClassManager.updatePageSub(sub_paging, getDatabasePath());
end

function handlePageTop()
	ClassManager.handlePageTop(self, getDatabasePath());
end
function handlePagePrev()
	ClassManager.handlePagePrev(self, getDatabasePath());
end
function handlePageNext()
	ClassManager.handlePageNext(self, getDatabasePath());
end

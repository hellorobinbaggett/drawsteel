function onInit()
end
    
function onFilter(w)


    local nTargetInit = DB.getValue(nodeSourceCT, "initresult", 0);
    if nTargetInit == 1 then
        return false;
    end
    return true;
end



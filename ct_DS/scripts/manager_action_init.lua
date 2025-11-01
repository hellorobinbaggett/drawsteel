function onInit()
    OOB_MSGTYPE_GONE = "Initiative Gone";
    -- Debug.chat("1");
    OOBManager.registerOOBMsgHandler(OOB_MSGTYPE_GONE, handlePlayerGone);
    -- Debug.chat("2");
    ActionsManager.registerResultHandler("init", onResolve);
    -- Debug.chat("3");
end

function handlePlayerGone(msgOOB)
    -- Debug.chat("handlePlayerGone");
    local rSource = ActorManager.resolveActor(msgOOB.sSourceNode);
    local nTotal = 1;

    DB.setValue(ActorManager.getCTNode(rSource), "initresult", "number", nTotal);
end

function notifyInit(rSource, nTotal) -- this sets the value
    -- Debug.chat("notifyInit");
    if not rSource then
        return;
    end
    
    local msgOOB = {};
    msgOOB.type = OOB_MSGTYPE_GONE;
    msgOOB.nTotal = 1;
    msgOOB.sSourceNode = ActorManager.getCreatureNodeName(rSource);
    Comm.deliverOOBMessage(msgOOB, "");
end

function onResolve(rSource)
    -- Debug.chat("onResoslve");
    local rMessage = "Initiative Gone" --declare message string
    Comm.deliverChatMessage(rMessage); --send this message in the chat
    local nTotal = 1; --declare total
    notifyInit(rSource, nTotal); 
end
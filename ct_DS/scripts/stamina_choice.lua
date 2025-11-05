function onValueChanged()
    if self.isPC() then
        Debug.console("hero");
        onValueChanged();
    else
        Debug.console("monster");
        onValueChanged();
    end
end

function isPC()
	return self.isRecordType("charsheet");
end

function isRecordType(s)
	return (WindowManager.getRecordType() == s);
end

function onValueChanged()

end
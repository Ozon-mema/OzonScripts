local ActiveKeys = {
    "OZON-2024-PREMIUM",
    "COUNTERBLOX-VIP-ACCESS",
    "SOLARIS-PARTNER-KEY",
    "RAID-SCRIPT-MASTER",
    "BACKUP-KEY-001",
    "EMERGENCY-ACCESS-2024"
}

return {
    GetAllActiveKeys = function()
        return ActiveKeys
    end,
    
    CheckKey = function(key)
        for _, validKey in ipairs(ActiveKeys) do
            if key == validKey then
                return true
            end
        end
        return false
    end,
    
    AddKey = function(newKey)
        table.insert(ActiveKeys, newKey)
    end,
    
    RemoveKey = function(keyToRemove)
        for i, key in ipairs(ActiveKeys) do
            if key == keyToRemove then
                table.remove(ActiveKeys, i)
                return true
            end
        end
        return false
    end
}

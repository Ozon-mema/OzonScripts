local ActiveKeys = {
    -- Зашифрованные ключи (base64 или простой шифр)
    "T1pPTi0yMDI0LVBSRU1JVU0=",          
    "Q09VTlRFUkJMT1gtVklQLUFDQ0VTUw==",  
    "U09MQVJJUy1QQVJUTkVSIEtFWQ==",      
    "UkFJRCBTQ1JJUFQgTUFTVEVS",          
}

-- Функция декодирования base64 (простая реализация)
local function base64Decode(str)
    local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    local result = ''
    
    str = str:gsub('[^'..b64chars..'=]', '')
    
    for i = 1, #str, 4 do
        local n0 = b64chars:find(str:sub(i, i)) - 1
        local n1 = b64chars:find(str:sub(i+1, i+1)) - 1
        local n2 = b64chars:find(str:sub(i+2, i+2)) - 1
        local n3 = b64chars:find(str:sub(i+3, i+3)) - 1
        
        local bytes = n0 * 64 + n1
        result = result .. string.char(bytes)
        
        if n2 then
            bytes = ((n1 % 4) * 64 + n2) // 16
            result = result .. string.char(bytes)
        end
        
        if n3 then
            bytes = ((n2 % 16) * 64 + n3) // 4
            result = result .. string.char(bytes)
        end
    end
    
    return result
end

-- Проверка ключа с декодированием
function CheckKeyEncrypted(inputKey)
    for _, encryptedKey in ipairs(ActiveKeys) do
        local decodedKey = base64Decode(encryptedKey)
        if inputKey == decodedKey then
            return true
        end
    end
    return false
end

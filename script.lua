-- 
local Token = "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" 

-- 
local RawUrl = "https://raw.githubusercontent.com/nbhouse134-bit/lua3/refs/heads/main/script.lua?token=GHSAT0AAAAAAEEBNPTYLLFB5KNB2WBFUV5S2TJLMZA"

local Success, Code = pcall(function()
    return game:HttpGet(RawUrl, true, {
        ["Authorization"] = "token " .. Token
    })
end)

if Success and Code then
    local LoadedScript, Err = loadstring(Code)
    if LoadedScript then
        LoadedScript()
    else
        warn("เกิดข้อผิดพลาดในการรันโค้ด: ", Err)
    end
else
    warn("ไม่สามารถดึงข้อมูลจาก Private GitHub ได้ โปรดตรวจสอบ Token หรือ URL")
end

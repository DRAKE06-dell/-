--[[
    --// Made By SLENGIK \\--
    --\\ Thanks For Using //
    -- https://discord.gg/5ZwtRajA
]]

-- Configurações de inicialização
local fileName = "SLENGIK_Trail.txt"
local count = 0

[cite_start]-- Gerenciamento de inicialização 
if isfile(fileName) then 
    local data = readfile(fileName)
    count = tonumber(data) or 0 
end

count = count + 1
writefile(fileName, tostring(count))

[cite_start]-- Notificação de Carregamento [cite: 2]
game.StarterGui:SetCore("SendNotification", {
    Title = "SLENGIK",
    Text = "Carregando Loader oficial...",
    Duration = 5
})

[cite_start]-- Execução do seu Loader do GitHub (Sem sistema de Key) 
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DRAKE06-dell/-/main/Loader-SLENGIK.lua"))()
end)

print("SLENGIK carregado com sucesso!")

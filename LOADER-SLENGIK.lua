print("SLENGIK Loader iniciado")

game.StarterGui:SetCore("SendNotification", {
    Title = "SLENGIK",
    Text = "Loader carregado com sucesso!",
    Duration = 5
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/DRAKE06-dell/-/main/Main-SLENGIK.lua"))()

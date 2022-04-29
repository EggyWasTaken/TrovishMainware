local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TrovishWARE", colors)
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}


getgenv().FlySpeed = "16"
getgenv().Fly = false





   -- MAIN
   local Info = Window:NewTab("Info")

      -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    
    
    
    local Movement = Window:NewTab("Movement")
    local MovementSection = Movement:NewSection("Movement")
    
    
    
    local Misc = Window:NewTab("Miscellaneous")
    local MiscSection = Misc:NewSection("Miscellaneous")



 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 400, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 400, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    
  
    
    ---949.135925, 96.5216141, 2056.64575, -0.0252401214, -4.89180962e-08, -0.999681413, 9.01168136e-08, 1, -5.12089677e-08, 0.999681413, -9.13806275e-08, -0.0252401214
    
     MovementSection:NewToggle("Flight", "A fly hack", function(state)
    if state then
        print("toggled fly")
    else
        print("fly not on")
    end
end)
     
    
 MovementSection:NewSlider("Fly Speed", "changes fly speed", 100, 16, function(v)
        getgenv().FlySpeed = v
     end)
  
   
   MiscSection:NewButton("Reset", "Upon clicking this kills you", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
  
   MiscSection:NewButton("Teleport to Remington 870", "Upon clicking this teleports you to a shotgun.", function()
    game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(-949.135925, 96.5216141, 2056.64575, -0.0252401214, -4.89180962e-08, -0.999681413, 9.01168136e-08, 1, -5.12089677e-08, 0.999681413, -9.13806275e-08, -0.0252401214)
end)





game.StarterGui:SetCore("SendNotification", {
                    Title = "TROVISH";
                    Text = "Loaded!";
                    Duration = 3;
})
     

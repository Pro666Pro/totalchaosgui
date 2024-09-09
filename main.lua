if not game:IsLoaded() then
        
    game.Loaded:Wait()
        
end

if game.PlaceId == 6403373529 or game.PlaceId == 11520107397 or game.PlaceId == 9015014224 then
    local bypass;
        bypass = hookmetamethod(game, "__namecall", function(method, ...) 
            if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
                return
            elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
                return
            elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
                return
            end
            return bypass(method, ...)
          
         end)
      end

local GameName = "total chaos gui - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "total chaos gui", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

local Script = Window:MakeTab({
	Name = "Chaos",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool scripts"
})

Scripts:AddButton({
	Name = "teleport to arena",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
	 end
})

Scripts:AddButton({
	Name = "teleport to tourtament",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
	 end
})

Scripts:AddButton({
	Name = "teleport to lobby",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-800,328,-2.5)
	 end
})

Scripts:AddButton({
	Name = "become invisible { ghost required }",
	Callback = function()
       fireclickdetector(workspace.Lobby["Ghost"].ClickDetector)
			 game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
	 end
})

Scripts:AddButton({
	Name = "activate every ability in-game",
	Callback = function()
      fireclickdetector(workspace.Lobby["Fort"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Fortlol:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Slicer"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
      game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
      wait(0.01)
      fireclickdetector(workspace.Lobby["Stun"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").StunR:FireServer(game:GetService("Players").LocalPlayer.Character.Stun)
      wait(0.01)
      fireclickdetector(workspace.Lobby["Baller"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["STOP"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").STOP:FireServer(true)
      wait(0.01)
      fireclickdetector(workspace.Lobby["God's Hand"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").TimestopJump:FireServer()
      game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
      game:GetService("ReplicatedStorage").Timestop:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Rocky"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").RockyShoot:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Tableflip"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Replica"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
      wait(0.01)
      fireclickdetector(workspace.Lobby["Defense"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Barrier:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Za Hando"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Erase:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Track"].ClickDetector)
      wait(0.01)
      local players = game.Players:GetChildren()
      local RandomPlayer = players[math.random(1, #players)]
      repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil
      Target = RandomPlayer
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer(Target.Character)
      wait(0.01)
      fireclickdetector(workspace.Lobby["Mail"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").MailSend:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Swapper"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").SLOC:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Gravity"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Engineer"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").Sentry:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Woah"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").VineThud:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Ping Pong"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Coil"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game:GetService("Players").LocalPlayer.Character.Coil)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
      wait(0.01)
      fireclickdetector(workspace.Lobby["Thor"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").ThorAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      wait(0.01)
      fireclickdetector(workspace.Lobby["Meteor"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Whirlwind"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Oven"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
      wait(0.01)
      fireclickdetector(workspace.Lobby["Blackhole"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Chicken"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Golem"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer("recall")
      wait(0.01)
      fireclickdetector(workspace.Lobby["Demolition"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer("c4")
      game:GetService("ReplicatedStorage").Events.c4:FireServer()
      wait(0.01)
      fireclickdetector(workspace.Lobby["Shotgun"].ClickDetector)
      wait(0.01)
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer("buckshot")
      wait(0.01)
      fireclickdetector(workspace.Lobby["Beachball"].ClickDetector)
      wait(0.01)
      if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") == nil then
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      elseif workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball").Position < -10 then
      game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
      end
      wait(0.2)
      if workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball") then
      game:GetService("ReplicatedStorage").Events.BeachBall:FireServer(workspace.Balls:FindFirstChild(game.Players.LocalPlayer.Name.."'s Ball"), Vector3.new(game:GetService("Workspace").CurrentCamera.CFrame.LookVector.X, 0, game:GetService("Workspace").CurrentCamera.CFrame.LookVector.Z).Unit * 0.2)
      end
      wait(0.01)
      game:GetService("ReplicatedStorage").NullAbility:FireServer()
      wait(0.01)
      game:GetService("ReplicatedStorage").AdminAbility:FireServer("Anvil")
      wait(0.01)
      game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
      wait(0.01)
	 end
})


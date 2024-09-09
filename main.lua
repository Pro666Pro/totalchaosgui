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

local GameName = "random gui i made in 3 hours - by nexer"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "random gui i made in 3 hours", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

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
	Name = "equip meteor",
	Callback = function()
	fireclickdetector(workspace.Lobby["Meteor"].ClickDetector)
	 end
})

_G.OnAbility = false
Scripts:AddToggle({
	Name = "make it rain { meteor required }",
	Default = false,
	Callback = function(Value)
		_G.OnAbility = Value
while _G.OnAbility and game.Players.LocalPlayer.leaderstats.Glove.Value == "Meteor" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer()
wait(0.01)
end
	 end
})

Scripts:AddButton({
	Name = "equip track",
	Callback = function()
	fireclickdetector(workspace.Lobby["Track"].ClickDetector)
	 end
})

_G.OnAbility2 = false
Scripts:AddToggle({
	Name = "serial killer { track required }",
	Default = false,
	Callback = function(Value)
		_G.OnAbility2 = Value
while _G.OnAbility2 and game.Players.LocalPlayer.leaderstats.Glove.Value == "Track" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer and RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(Target.Character)
wait(3)
end
	 end
})

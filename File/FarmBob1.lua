_G.AutoFarm = {
	Slapple = false,
	Candy = false
}

if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2125950512) then
fireclickdetector(workspace.Lobby.Replica.ClickDetector)
wait(0.25)
workspace.Lobby.Teleport1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.4)
if _G.AutoFarm.Slapple == true then
if game.Players.LocalPlayer.Character:FindFirstChild("entered") then
for i, v in pairs(workspace.Arena.island5.Slapples:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Slapple" or v.Name == "GoldenSlapple" and v:FindFirstChild("Glove") and v.Glove:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.Glove.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
       end
   end
if _G.AutoFarm.Candy == true then
for i, v in pairs(game.Workspace.CandyCorns:GetChildren()) do
                if game.Players.LocalPlayer.Character:FindFirstChild("Head") and v:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
end
wait(1)
for i = 1, 2000 do
game:GetService("ReplicatedStorage").Duplicate:FireServer(true)
end
wait(0.4)
local serverList = {}
for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
	if v.playing and type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
		serverList[#serverList + 1] = v.id
	end
end
if #serverList > 0 then
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, serverList[math.random(1, #serverList)])
end
else
fireclickdetector(workspace.Lobby.bob.ClickDetector)
end
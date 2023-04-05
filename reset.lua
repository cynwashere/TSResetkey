local LocalP = game.Players.LocalPlayer
local Mouse = LocalP:GetMouse()

prev = LocalP.Character:WaitForChild('HumanoidRootPart').CFrame

Mouse.KeyDown:Connect(function(key)
    if key == "c" then
        prev = LocalP.Character:WaitForChild('HumanoidRootPart').CFrame
        LocalP.Character.Parent = workspace.Terrain
        LocalP.Character.Torso:Destroy()
        game:GetService('Workspace'):WaitForChild(LocalP.Name)
        for i=1,10 do
            LocalP.Character:WaitForChild('HumanoidRootPart').CFrame = prev
            wait()
        end
    end
end)
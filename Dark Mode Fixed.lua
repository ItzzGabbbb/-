local ReplicatedStorage = game:GetService("ReplicatedStorage")

local clientModules = ReplicatedStorage:FindFirstChild("ClientModules")
if not clientModules then
    clientModules = Instance.new("Folder")
    clientModules.Name = "ClientModules"
    clientModules.Parent = ReplicatedStorage
end

local modulesClient = ReplicatedStorage:FindFirstChild("ModulesClient")
if modulesClient then
    local moduleEvents = modulesClient:FindFirstChild("Module_Events")
    if moduleEvents then
        moduleEvents.Parent = clientModules
        print("Successfully moved Module_Events to ClientModules!")
    else
        warn("Module_Events not found inside ModulesClient!")
    end
else
    warn("ModulesClient folder not found in ReplicatedStorage!")
end
wait(0.1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Dark%20Mode/source.lua'))()

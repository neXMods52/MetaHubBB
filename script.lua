local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Blade Ball | Meta Hub 0.6", "BloodTheme")

-- Assuming you already have "Window" defined as in your previous code
local ScriptsTab = Window:NewTab("Scripts")
local OtherScriptsSection = ScriptsTab:NewSection("Other Scripts")

-- Add a label
local Label = OtherScriptsSection:NewLabel("DISABLE ANTICHEAT IN THE MAIN PAGE BEFORE USING THIS TAB")

-- Add a button
local ExecuteBedolHubButton = OtherScriptsSection:NewButton("Execute Bedol Hub 7.5", "Execute Bedol Hub Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/SourceLua/main/Blade_Ball.lua"))()
end)

-- Add a textbox for modifying UI Size
local UISizeTextbox = OtherScriptsSection:NewTextBox("Edit Bedol Next Gen UI Size", "Enter a new value (Default: 200)", function(newSize)
    local newSizeNumber = tonumber(newSize)

    if newSizeNumber then
        _G.UI_Size = newSizeNumber
    else
        _G.UI_Size = 200 -- Default value
    end
end)

local ExecuteBedolNextGenButton = OtherScriptsSection:NewButton("Execute Bedol Next Gen", "Execute Bedol Next Gen Script", function()
    game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
    game:GetService("ReplicatedStorage").Security[""]:Destroy()
    game:GetService("ReplicatedStorage").Security:Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()

    _G.UI_Size = 200 -- config ui size
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
end)

local ExecuteScriptAlienHub = OtherScriptsSection:NewButton("Execute Alien Hub", "Script needs key", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/romkich09/keySystem/main/mainKey", true))()
end)

local ExecuteBlueParryGUI = OtherScriptsSection:NewButton("Execute Crazy Hub", "Autoparry no gui", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kmmwhocare/Crazzy-Hub/main/Blade%20Ball"))()
end) 

local ExecuteAzureHub = OtherScriptsSection:NewButton("Azure Hub (PC)", "Spam Parry and Autoparry", function()
    loadstring(game:HttpGet('https://angxlzz.dev/azure.lua'))()
end)

local XnoxHub = OtherScriptsSection:NewButton("Xnox Hub", "Script Hub (9 Scripts)", function()
    loadstring(game:HttpGet("https://paste.gg/p/anonymous/42c468c6f0d94d6a86fc90caf7f0e897/files/9d3a059ff4064dc0b9efe621c774d175/raw"))()
end)

local LnHub = OtherScriptsSection:NewButton("LN Hub V4", "Script Hub with Lots of script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV4.lua'))(); 
end)

local AlchemyScript = OtherScriptsSection:NewButton("Alchemy Hub", "Run the Alchemy script", function()
    local v = 1
    loadstring(game:HttpGet("https://alchemyhub.xyz/v2"))()
end)

local lue = OtherScriptsSection:NewButton("Luy Hub (Trash)", "Old script,it's trash", function()
    loadstring(game:HttpGet('https://shz.al/~LUYHUB'))()
end)

local wazureinfo = OtherScriptsSection:NewLabel("W Azure")

local ModeDropdown = OtherScriptsSection:NewDropdown("Mode", "Select a mode", {"Idle", "AimOnly", "Rage", "AI"}, function(selectedOption)
    getgenv().Mode = selectedOption
end)

-- Create a checkbox for "AIJumpState"
local AIJumpCheckbox = OtherScriptsSection:NewToggle("AI JumpState ", "Allow AI to Jump", function(state)
    getgenv().AIJumpState = state
end)

-- Create a checkbox for "StopAutoParry"
local StopAutoParryCheckbox = OtherScriptsSection:NewToggle("Stop Auto Parry", "Toggle Stop AutoParry", function(state)
    getgenv().StopAutoParry = state
end)

-- Create a dropdown for "PingBased"
local PingBasedDropdown = OtherScriptsSection:NewDropdown("Ping-Based", "Select an option", {"true", "false"}, function(selectedOption)
    getgenv().PingBased = selectedOption == "true"
end)

-- Create a checkbox for "ForceWin"
local ForceWinCheckbox = OtherScriptsSection:NewToggle("Force Win (W Azure Paid)", "Toggle Force Win", function(state)
    getgenv().ForceWin = state
end)

-- Create a checkbox for "AutoUseSkill"
local AutoUseSkillCheckbox = OtherScriptsSection:NewToggle("Auto Use Skill", "Toggle Auto Use Skill", function(state)
    getgenv().AutoUseSkill = state
end)

-- Create a textbox for "BaseVelocity"
local BaseVelocityTextbox = OtherScriptsSection:NewTextBox("BaseVelocity", "Enter a new value", function(newValue)
    getgenv().BaseVelocity = tonumber(newValue) or getgenv().BaseVelocity
end)

-- Create a textbox for "BasePredictVelocity"
local BasePredictVelocityTextbox = OtherScriptsSection:NewTextBox("BasePredictVelocity", "Enter a new value", function(newValue)
    getgenv().BasePredictVelocity = tonumber(newValue) or getgenv().BasePredictVelocity
end)

-- Create a checkbox for "VisualizePath"
local VisualizePathCheckbox = OtherScriptsSection:NewToggle("Visualize Path", "Toggle Visualize Path", function(state)
    getgenv().VisualizePath = state
end)

-- Create a checkbox for "AutoSpamClickDetect"
local AutoSpamClickDetectCheckbox = OtherScriptsSection:NewToggle("Auto Spam-Click Detect", "Toggle Auto Spam Click Detect", function(state)
    getgenv().AutoSpamClickDetect = state
end)

-- Create a checkbox for "CloseRangeAttack"
local CloseRangeAttackCheckbox = OtherScriptsSection:NewToggle("Close Range Attack", "Toggle Close Range Attack", function(state)
    getgenv().CloseRangeAttack = state
end)

-- Create a textbox for "AutoClickKeyBind"
local AutoClickKeyBindTextbox = OtherScriptsSection:NewTextBox("AutoClick KeyBind", "Enter a new key", function(newValue)
    getgenv().AutoClickKeyBind = newValue
end)

-- Create a textbox for "AutoClickThreshold"
local AutoClickThresholdTextbox = OtherScriptsSection:NewTextBox("Autoclick Threshold", "Enter a new value", function(newValue)
    getgenv().AutoClickThreshold = tonumber(newValue) or getgenv().AutoClickThreshold
end)

-- Create a textbox for "DistanceBall"
local DistanceBallTextbox = OtherScriptsSection:NewTextBox("Distance Ball", "Enter a new value", function(newValue)
    getgenv().DistanceBall = tonumber(newValue) or getgenv().DistanceBall
end)

-- Create a checkbox for "NoUi"
local NoUiCheckbox = OtherScriptsSection:NewToggle("No UI", "Toggle No UI", function(state)
    getgenv().NoUi = state
end)

-- Create a button to execute the main script
local ExecuteMainScriptButton = OtherScriptsSection:NewButton("Run", "Run the main script", function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fd07660d92cb26891e9acfab9f0c6ba4.lua"))()
end)

local MainTab = Window:NewTab("Main")
-- Assuming you already have "MainTab" defined as in your previous code

local AnticheatSection = MainTab:NewSection("Anticheat")

local DeleteAnticheat = AnticheatSection:NewButton("Delete Anticheat", "Disable Anticheat", function()
    game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
    game:GetService("ReplicatedStorage").Security[""]:Destroy()
    game:GetService("ReplicatedStorage").Security:Destroy()
    game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()
    local notificationInfo = {
        Title = "! SCRIPT",
        Text = "The Anticheat is now disabled !"
    }

    NotificationService:CreateNotification(notificationInfo):SetLifeSpan(5)
end)

local crateSection = MainTab:NewSection("Crates")

local swordNormal = crateSection:NewButton("Buy Normal Sword Crate", "Buys the sword crate for 80 coins", function()
    local args = {
    [1] = "PromptPurchaseCrate",
    [2] = workspace.Spawn.Crates.NormalSwordCrate
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
end)

local ExploNormal = crateSection:NewButton("Buy Normal Explosion Crate", "Buys the explosion crate for 80 coins", function()
    local args = {
    [1] = "PromptPurchaseCrate",
    [2] = workspace.Spawn.Crates.NormalExplosionCrate
}

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
end)
-- Assuming you already have "Window" defined as in your previous code

local InfoTab = Window:NewTab("Misc")

local server = InfoTab:NewSection("Server")

local hop = server:NewButton("Server Hop", "", function()
    local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
end)

local rejoin = server:NewButton("Rejoin", "Rejoin the same server", function()
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer



ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end)

local InfoSection = InfoTab:NewSection("V-Player Info-V")

local player = game.Players.LocalPlayer

local UsernameLabel = InfoSection:NewLabel("Username: " .. player.Name)

local player = game.Players.LocalPlayer
local startTime = tick()

local UserTimeLabel = InfoSection:NewLabel("User Time: 00:00:00")

local function updateUserTimeLabel()
    local currentTime = tick() - startTime
    local hours = math.floor(currentTime / 3600)
    local minutes = math.floor((currentTime % 3600) / 60)
    local seconds = math.floor(currentTime % 60)
    local formattedTime = string.format("%02d:%02d:%02d", hours, minutes, seconds)

    UserTimeLabel:UpdateLabel("Script Use Time: " .. formattedTime)
end

-- Update the label every second
while true do
    updateUserTimeLabel()
    wait(1)
end

-- Load the Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create a window
local Window = OrionLib:MakeWindow({
    Name = "Meta Hub 2",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "BladeBallMetaConfig"
})

-- Create a tab "Auto Parries"
local AutoParriesTab = Window:MakeTab({
    Name = "Auto Parry",
    Icon = "rbxassetid://12345678", -- Replace with your icon asset ID
    PremiumOnly = false
})

-- Create a section
local AutoParrySection = AutoParriesTab:AddSection({
    Name = "Auto Parry"
})

-- Create a button "Auto Parry 1"
AutoParrySection:AddButton({
    Name = "Auto Parry",
    Callback = function()
        local Debug = true
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        
        local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
        local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
        local Balls = workspace:WaitForChild("Balls", 9e9)
        
        local function VerifyBall(Ball)
            if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
                return true
            end
        end
        
        local function IsTarget()
            return (Player.Character and Player.Character:FindFirstChild("Highlight"))
        end
        
        local function Parry()
            Remotes:WaitForChild("ParryButtonPress"):Fire()
        end
        
        Balls.ChildAdded:Connect(function(Ball)
            if not VerifyBall(Ball) then
                return
            end
            
            local OldPosition = Ball.Position
            local OldTick = tick()
            
            Ball:GetPropertyChangedSignal("Position"):Connect(function()
                if IsTarget() then
                    local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
                    local Velocity = (OldPosition - Ball.Position).Magnitude
                    
                    if (Distance / Velocity) <= 10 then
                        Parry()
                    end
                end
                
                if (tick() - OldTick >= 1/60) then
                    OldTick = tick()
                    OldPosition = Ball.Position
                end
            end)
        end)

        -- Display a notification
        OrionLib:MakeNotification({
            Name = "Auto Parry 1: Activated",
            Content = "Auto Parry 1 has been activated.",
            Time = 5
        })
    end
})

local ScriptsTab = Window:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://5747127696", -- Replace with your Trash Icon asset ID
    PremiumOnly = false
})

-- Function to show a notification
local function showNotification(title, content)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Time = 5
    })
end

ScriptsTab:AddParagraph("READ", "Scripts with 🌟 Marked in their name is considered as best scripts. More Stars More Better. | Scripts with 🔑 in their name means the script needs key. Script says 🔥 means its popular.")

ScriptsTab:AddButton({
    Name = "Remove Anti-Cheat",
    Callback = function()
        game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
        game:GetService("ReplicatedStorage").Security[""]:Destroy()
        game:GetService("ReplicatedStorage").Security:Destroy()
        game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()
        showNotification("NOTIFICATION", "ANTICHEAT IS DISABLE")
    end
})

-- Create buttons with callbacks
ScriptsTab:AddButton({
    Name = "Bedol Hub 7.5 Pro Max",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/SourceLua/main/Blade_Ball.lua"))()
        showNotification("Bedol Hub 7.5 Pro Max", "Activated")
    end
})

ScriptsTab:AddButton({
    Name = "Zen.cc (🔑 ZenIsBetter)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xdevslasher/zen.cc/main/zen.cchallowzenupdate.lua", true))()
        showNotification("Zen.cc (Key: ZenIsBetter)", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Bedol Hub V4 (🌟🌟🌟 | 🔥)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nqxlOfc/Loaders/main/Blade_Ball.lua"))()
        showNotification("Bedol Hub V4", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Lazium Hub loader",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfinityMercury/Scripts/main/BladeBall/loader.lua",true))()
        showNotification("Lazium Hub", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Visual Hub (🔑 IUseVisualFree)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DevTravDYT/dsaaswadfeszad/main/Testt'))()
        showNotification("Visual Hub", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Fuji Hub",
    Callback = function()
        loadstring(game:HttpGet("https://shz.al/~main/dread/Fuji-Hub/script"))()
        showNotification("Fuji Hub", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Hexa Hub (🔥)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Brothinkimnoob/AUTO-PARRY-HEXA-V3/main/HEXA%20V3"))()
        showNotification("Hexa Hub", "Executed! Be Careful when using with anticheat")
    end
})

ScriptsTab:AddButton({
    Name = "Project Nova",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/ProjectNova/loader.lua",true))()
        showNotification("Project Nova", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Alien Hub (🔑)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/romkich09/keySystem/main/mainKey", true))()
    end
})

-- Add the Crazy Hub script button
ScriptsTab:AddButton({
    Name = "Crazy Hub (🌟)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kmmwhocare/Crazzy-Hub/main/Blade%20Ball"))()
        showNotification("Craazy Hub", "Script Executed")
    end
})

ScriptsTab:AddButton({
    Name = "Ayden Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/reed192512/KeySystem/main/KeySystem.txt", true))()
        showNotification("Ayden Hub", "Script Executed")
    end
})

-- Add the Winnablez script button
ScriptsTab:AddButton({
    Name = "Winnable Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Winnablez/Winnable/main/Loader"))()
        showNotification("Winnable Hub", "Script Executed")
    end
})

-- Add the Symphony Hub script button
ScriptsTab:AddButton({
    Name = "Symphony Hub (🔑)",
    Callback = function()
        local a,b,c,d=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,"https://itsjidy.github.io/SymphonyHub/Loader.html"
        c(a and b, "Your Executor does not support.")
        a(b({Url=d,Method="GET"}).Body)()
    end
})

-- Add the Lumin Hub script button
ScriptsTab:AddButton({
    Name = "LN Hub V4 (🌟🌟)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV4.lua'))()
        showNotification("Ln Hub", "Script Executed")
    end
})

-- Create a tab "Shop" if it doesn't already exist
local ShopTab = Window:MakeTab({
    Name = "Shop",
    Icon = "rbxassetid://12345678", -- Replace with an icon asset ID
    PremiumOnly = false
})

-- Add a section "Shop"
local ShopSection = ShopTab:AddSection({
    Name = "Shop"
})

-- Add the "Spin Wheel" button
ShopSection:AddButton({
    Name = "Spin Wheel (1x Spin ⚙️)",
    Callback = function()
        local args = {
            [1] = "SpinWheel"
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

-- Add the "Explosion Crate (80 Coins 🪙)" button
ShopSection:AddButton({
    Name = "Explosion Crate (80 Coins 🪙)",
    Callback = function()
        local args = {
            [1] = "PromptPurchaseCrate",
            [2] = workspace.Spawn.Crates.NormalExplosionCrate
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

-- Add the "Sword Crate (80 Coins 🪙)" button
ShopSection:AddButton({
    Name = "Sword Crate (80 Coins 🪙)",
    Callback = function()
        local args = {
            [1] = "PromptPurchaseCrate",
            [2] = workspace.Spawn.Crates.NormalSwordCrate
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

ShopSection:AddButton({
    Name = "💎 Premium Sword Crate (99 Robux 🧊)",
    Callback = function()
        local args = {
            [1] = "PromptPurchaseCrate",
            [2] = workspace.Spawn.Crates.PremiumSwordCrate
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

ShopSection:AddButton({
    Name = "💎 Premium Explosion Crate (99 Robux 🧊)",
    Callback = function()
        local args = {
            [1] = "PromptPurchaseCrate",
            [2] = workspace.Spawn.Crates.PremiumExplosionCrate
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

ShopSection:AddButton({
    Name = "🎃 Halloween Crate (👻 1,000 Coins)",
    Callback = function()
        local args = {
           [1] = "PromptPurchaseCrate",
           [2] = workspace.Spawn.Crates.HalloweenSwordCrate
        }

        game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(unpack(args))
    end
})

-- Add a section "Abilities"
local AbilitiesSection = ShopTab:AddSection({
    Name = "Abilities"
})

-- Add a Dropdown for selecting an ability
local AbilityDropdown = AbilitiesSection:AddDropdown({
    Name = "Select Ability",
    Default = "Freeze", -- Set your desired default ability
    Options = {
        "Freeze",
        "Reaper",
        "Thunder Dash",
        "Platform",
        "Super Jump",
        "Telekinesis",
        "Dash",
        "Infinity",
        "Blink",
        "Quad Jump",
        "Pull",
        "Rapture"
    },
    Callback = function(selectedAbility)
        selectedAbility = tostring(selectedAbility)
    end
})

-- Add a button to equip the selected ability
AbilitiesSection:AddButton({
    Name = "Equip Ability",
    Callback = function()
        local selectedAbility = AbilityDropdown:Get() -- Get the selected ability from the dropdown
            local args = {
            [1] = selectedAbility
        }

        game:GetService("ReplicatedStorage").Remotes.Store.RequestEquipAbility:InvokeServer(unpack(args))
    end
})

-- Create a tab "Misc" if it doesn't already exist
local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998", -- Replace with an icon asset ID
    PremiumOnly = false
})

local trollSection = MiscTab:AddSection({
    Name = "troll",
})

trollSection:AddButton({
    Name = "Teleport to Lobby (Use it when on map)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.2117614746094, 124.01596069335938, 149.12924194335938)
    end
})

trollSection:AddButton({
    Name = "Teleport outside map (Buggy)",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.0488891601562, 17.71648406982422, 66.18453979492188)
    end
})

trollSection:AddToggle({
    Name = "Clash Troll [cant off]",
    Callback = function(state)
        if state then
               while state do
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.0488891601562, 17.71648406982422, 66.18453979492188)
               wait(1)
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.2117614746094, 124.01596069335938, 149.12924194335938)
               wait(1)
         end
      end
  end
})

-- Initialize the Orion Library
OrionLib:Init()

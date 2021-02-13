local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("skhyhub","soon")

local Home = UI:addPage("Home",1,true,6)

Home:addLabel("Welcome to skhyhub","made by peaking#0001")

Home:addButton("discord.gg/skids",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Discord";
        Text = "Join da cord discord.gg/skids";
    })
end)

Home:addToggle("pogsense.pub",function(value)
    print(value)
    if value == false then 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Skidding Crashed";
            Text = "retoggle !";
        })
    else 
        game.StarterGui:SetCore("SendNotification",{
            Title = "Beamed by skid";
            Text = "pogsense";
        })
    end
end)


Home:addTextBox("Write","text here",function(value)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Wrote";
        Text = value;
    })
end)

Home:addDropdown("script selection",{"DarkHub","Chat Bypasser","BreakingPoint","More soon"},1,function(value)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Selected:";
        Text = value;
        
    }) 
end)

-- Just an example of how you would actually use it i guess

local LP = UI:addPage("Self",2,false,6)

-- Label

LP:addLabel("Self","Don't use in games with anti cheats")

--- Button

LP:addButton("KYS",function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

-- Toggle

LP:addToggle("Sprint",function(value)
    if value == false then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
    end
end)

-- Slider

LP:addSlider("WalkSpeed",16,150,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- Textbox

LP:addTextBox("Jump Power / 50 is default","Number here",function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- Dropdown 

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)


-- Spam 

LP:addLabel("Spam","This is just to show how it looks with more ui elements")

LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)


LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)


LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)


LP:addDropdown("Teleport to Player",PLIST,4,function(value)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
end)

local LP = UI:addPage("Script hub",3,false,6)

LP:addButton("DarkHub",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Loading Darkhub";
        loadstring(game:HttpGet("https://pastebin.com/raw/yCrBkPaY"))()
    })
end)

LP:addButton("Chat Bypass",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "Loading Byoa";
        loadstring(game:HttpGet("loadstring(game:HttpGet('https://raw.githubusercontent.com/bedra45/chetbypasser/main/chetbypass'))()"))()
    })
end)

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.G then
        if game:GetService("CoreGui").fu8rj82n.Frame.Visible == false then
            game:GetService("CoreGui").fu8rj82n.Frame.Visible = true
        else
            game:GetService("CoreGui").fu8rj82n.Frame.Visible = false
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPress)
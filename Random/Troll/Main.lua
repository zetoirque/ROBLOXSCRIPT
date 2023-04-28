local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MADE BY ZETO1RQUE", colors)
local Tab = Window:NewTab("Troll")
local Section = Tab:NewSection("Size")
local Section2 = Tab:NewSection("Mouvement")

local bool = true

getgenv().FlySpeed = 500;




--FlyScript #1
repeat wait()

until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")

local mouse = game.Players.LocalPlayer:GetMouse() 

repeat wait() until mouse

local plr = game.Players.LocalPlayer
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 0

function Fly(PStand) 

    plr = game.Players.LocalPlayer
    torso = plr.Character.Head  

local bg = Instance.new("BodyGyro", torso) 

bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame

local bv = Instance.new("BodyVelocity", torso) 

bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 

repeat wait() 

if PStand ~= true then
plr.Character.Humanoid.PlatformStand = true
end

if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 

    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*FlySpeed

    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 

elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 

    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*FlySpeed

else 

    bv.velocity = Vector3.new(0,0.1,0) 

end 

bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 

until not flying 

ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 

end 

mouse.KeyDown:connect(function(key) 

    if key:lower() == "w" then 

        ctrl.f = 1 

    elseif key:lower() == "s" then 

        ctrl.b = -1 

    elseif key:lower() == "a" then 

        ctrl.l = -1 

    elseif key:lower() == "d" then 

        ctrl.r = 1 

    end 

end) 

mouse.KeyUp:connect(function(key) 

    if key:lower() == "w" then 

        ctrl.f = 0 

    elseif key:lower() == "s" then 

        ctrl.b = 0 

    elseif key:lower() == "a" then 

        ctrl.l = 0 

    elseif key:lower() == "d" then 

        ctrl.r = 0 

    end 

end)






local button = Section:NewButton("Be Super Tall", "", function()
    
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

    function rm()
    	for i,v in pairs(Character:GetDescendants()) do
    		if v:IsA("BasePart") then
    			if v.Name == "Handle" or v.Name == "Head" then
    				if Character.Head:FindFirstChild("OriginalSize") then
    					Character.Head.OriginalSize:Destroy()
    				end
    			else
    				for i,cav in pairs(v:GetDescendants()) do
    					if cav:IsA("Attachment") then
    						if cav:FindFirstChild("OriginalPosition") then
    							cav.OriginalPosition:Destroy()  
    						end
    					end
    				end
    				v:FindFirstChild("OriginalSize"):Destroy()
    				if v:FindFirstChild("AvatarPartScaleType") then
    					v:FindFirstChild("AvatarPartScaleType"):Destroy()
    				end
    			end
    		end
    	end
    end

    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
    wait(1)

    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
    wait(1)

    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    wait(1)

    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    wait(1)

    rm()
    wait(0.5)
    Humanoid:FindFirstChild("HeadScale"):Destroy()
    wait(1)

end)

Section2:NewKeybind("Fly", "", Enum.KeyCode.F, function()

    if flying == true then 

        flying = false

    else 

        flying = true 
        Fly() 

    end
end)

Section2:NewKeybind("Fly For Vehicule", "", Enum.KeyCode.R, function()

    if flying == true then 

        flying = false

    else 

        flying = true 
        Fly(bool)

    end
end)

Section2:NewSlider("FlySpeed", "", 400, 10, function(s)
    FlySpeed = s
end)

Section2:NewSlider("WalkSpeed", "", 500, 15, function(s)
    
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("JumpHeigh", "", 500, 7, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = s
end)

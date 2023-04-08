local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Prior Extinction!", "Ocean")

local Tab3 = Window:NewTab("Auto-Farm")
local Section5 = Tab3:NewSection("Parameters")
local Section4 = Tab3:NewSection("TP-Fossil")
local Section3 = Tab3:NewSection("Auto-Fossil")

local Tab = Window:NewTab("ESP")
local Section = Tab:NewSection("ESP")

local Tab2 = Window:NewTab("Movement")
local Section2 = Tab2:NewSection("Fly")

getgenv().FlySpeed = 100;

getgenv().SmallFossil = false
getgenv().MediumFossil = false
getgenv().LargeFossil = false
getgenv().TREXFossil = false
getgenv().TriceratopsFossil = false

local esp_settings = {
    textsize = 13,
}

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)



gui.Name = "Cracked esp";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.Font = "Arial"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(255,255,255)
esp.BorderSizePixel = 0

--ESP (Large)
function ESP()

    game:GetService("RunService").RenderStepped:Connect(function()

        if LargeFossil == true then
            
            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Large Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp") == nil then


                    esp.Text = "["..v.Name.."]"
                    gui:Clone().Parent = v.FossilL
                    
                end
            end

        else

            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Large Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp")  then
                    
                    v.FossilL:FindFirstChild("Cracked esp"):Destroy() 

                end
            end

            if not LargeFossil then return end

        end
    end)
end

--ESP (T-REX)
function ESP2()

    game:GetService("RunService").RenderStepped:Connect(function()

        if TREXFossil == true then
            
            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Tyrannosaurus Rex Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp") == nil then


                    esp.Text = "["..v.Name.."]"
                    gui:Clone().Parent = v.FossilL
                    
                end
            end

        else

            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Tyrannosaurus Rex Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp")  then
                    
                    v.FossilL:FindFirstChild("Cracked esp"):Destroy() 

                end
            end

            if not TREXFossil then return end

        end
    end)
end

--ESP (Tyrannosaurus)
function ESP3()

    game:GetService("RunService").RenderStepped:Connect(function()

        if TriceratopsFossil == true then
            
            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Triceratops Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp") == nil then


                    esp.Text = "["..v.Name.."]"
                    gui:Clone().Parent = v.FossilL
                    
                end
            end

        else

            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Triceratops Fossil" and v.FossilL and v.FossilL:FindFirstChild("Cracked esp")  then
                    
                    v.FossilL:FindFirstChild("Cracked esp"):Destroy() 

                end
            end

            if not TriceratopsFossil then return end

        end
    end)
end

--ESP (Medium)
function ESP4()

    game:GetService("RunService").RenderStepped:Connect(function()

        if MediumFossil == true then
            
            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Medium Fossil" and v.FossilM and v.FossilM:FindFirstChild("Cracked esp") == nil then


                    esp.Text = "["..v.Name.."]"
                    gui:Clone().Parent = v.FossilM
                    
                end
            end

        else

            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Medium Fossil" and v.FossilM and v.FossilM:FindFirstChild("Cracked esp")  then
                    
                    v.FossilM:FindFirstChild("Cracked esp"):Destroy() 

                end
            end

            if not MediumFossil then return end

        end
    end)
end

--ESP (Small)
function ESP5()

    game:GetService("RunService").RenderStepped:Connect(function()

        if SmallFossil == true then
            
            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Small Fossil" and v.FossilS and v.FossilS:FindFirstChild("Cracked esp") == nil then


                    esp.Text = "["..v.Name.."]"
                    gui:Clone().Parent = v.FossilS
                    
                end
            end

        else

            for i,v in pairs (game.Workspace:FindFirstChild("SpawnedFossils"):GetChildren()) do
                if v.Name == "Small Fossil" and v.FossilS and v.FossilS:FindFirstChild("Cracked esp")  then
                    
                    v.FossilS:FindFirstChild("Cracked esp"):Destroy() 

                end
            end

            if not SmallFossil then return end

        end
    end)
end

Section:NewToggle("Small Fossil", "", function(state)
    if state then

        SmallFossil = true
        ESP5()

    else

        SmallFossil = false
        ESP5()
    
    end
end)

Section:NewToggle("Medium Fossil", "", function(state)
    if state then

        MediumFossil = true
        ESP4()

    else

        MediumFossil = false
        ESP4()
    
    end
end)

Section:NewToggle("Large Fossil", "", function(state)
    if state then

        LargeFossil = true
        ESP()

    else

        LargeFossil = false
        ESP()
    
    end
end)

Section:NewToggle("Tyrannosaurus Rex Fossil", "", function(state)
    if state then

        TREXFossil = true
        ESP2()

    else

        TREXFossil = false
        ESP2()
    
    end
end)

Section:NewToggle("Triceratops Fossil", "", function(state)
    if state then

        TriceratopsFossil = true
        ESP3()

    else

        TriceratopsFossil = false
        ESP3()
    
    end
end)












--FlyScript

repeat wait()

until game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local mouse = game.Players.LocalPlayer:GetMouse() 

repeat wait() until mouse

local plr = game.Players.LocalPlayer
local torso = plr.Character.MeshModel.RootPart  
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 0

function Fly() 

    plr = game.Players.LocalPlayer
    torso = plr.Character.MeshModel.RootPart

local bg = Instance.new("BodyGyro", torso) 

bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame

local bv = Instance.new("BodyVelocity", torso) 

bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 

repeat wait() 

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



Section2:NewKeybind("Fly", "", Enum.KeyCode.X, function()

    if flying == true then 

        flying = false

    else 

        flying = true 
        Fly() 

    end
end)

Section2:NewSlider("FlySpeed", "", 150, 50, function(s)
    FlySpeed = s
end)





local teleport_table = {location1 = game.Workspace.SpawnedFossils:FindFirstChild("Small Fossil").FossilS.Position}

local tween_s = game:GetService('TweenService')
local tween_i = TweenInfo.new(0.5,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function TweenFunc(v)

    if lp.Character and lp.Character:FindFirstChild("Body")then

        local cf = CFrame.new(v) * CFrame.new(0,6,0)
        local a = tween_s:Create(lp.Character.Body, tween_i, {CFrame=cf})

        a:Play()



    end

end

function TpToFossilLFunc()
    for i, v in pairs(game.Workspace.SpawnedFossils:GetChildren()) do
            if v.Name == "Large Fossil" or v.Name == "Tyrannosaurus Rex Fossil" or v.Name == "Triceratops Fossil" then
                TweenFunc(v.FossilL.Position)
                wait(1.5)
                TweenFunc(v.FossilL.Position)

                return false

            end
    end
end

function TpToFossilMFunc()
    for i, v in pairs(game.Workspace.SpawnedFossils:GetChildren()) do
            if v.Name == "Medium Fossil" then
                TweenFunc(v.FossilM.Position)
                wait(1.5)
                TweenFunc(v.FossilM.Position)

                return false

            end
    end
end

function TpToFossilSFunc()
    for i, v in pairs(game.Workspace.SpawnedFossils:GetChildren()) do
        if v.Name == "Small Fossil" then
                TweenFunc(v.FossilS.Position)
                wait(1.5)
                TweenFunc(v.FossilS.Position)

                return false
        end
    end
end



Section5:NewToggle("Anchored", "", function(ss)

    if ss then

        if lp.Character and lp.Character:FindFirstChild("Body") then

            game.Players.LocalPlayer.Character:FindFirstChild("Body").Anchored = true
    
        end

    else

        if lp.Character and lp.Character:FindFirstChild("Body") then

            game.Players.LocalPlayer.Character:FindFirstChild("Body").Anchored = false
    
        end

    end

end)

Section4:NewButton("TP To A Random Large Fossil (T-REX, Trice, large)", "", function()
    TpToFossilLFunc()
end)

Section4:NewButton("TP To A Random Medium Fossil", "", function()
    TpToFossilMFunc()
end)

Section4:NewButton("TP To A Random Small Fossil", "", function()
    TpToFossilSFunc()
end)

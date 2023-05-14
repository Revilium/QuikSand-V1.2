-- Script By: DiemzMaster, AlohaGryphin, PorQueTorQue

-- Idea By: 65GamingHolie, VCGDuparier, HolayMolay, ChickenKFCEten

-- Make sure to join our discord!

-- https://discord.com/invite/DJousting

-- (If it's expired it's not my fault you're late)

local url = "https://raw.githubusercontent.com/Revelium/QuikSand-V1.2/master/QuikSand-V1.2.lua" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Revelium/QuikSand-V1.2/master/QuikSand-V1.2.lua"))()True

-- Run the script
scriptFunction()

-- Store references to the player and character objects
local player = game.Players.LocalPlayer
local character = player.Character

-- Function to handle keyboard input
function processKeyboardInput()
    if game:GetService("UserInputService").InputBegan("keyboard") then
        for _, event in pairs(game:GetService("UserInputService").InputEndedEvents["keyboard"]) do
            if event.KeyCode == Enums.KeyCode.E then
                if not character.Humanoid.FeetPlacementType then
                    character.Humanoid.FeetPlacementType = Enums.FootPlacementType.Flat
                    
                    -- Sink the player into the ground over time
                    character.Humanoid.WalkSpeed = -50
                    wait(2)
                    character.Humanoid.WalkSpeed = -75
                    wait(2)
                    character.Humanoid.WalkSpeed = -100
                    wait(2)
                    character.Humanoid.WalkSpeed = 0
                else
                    -- Rise the player out of the ground over time
                    character.Humanoid.WalkSpeed = 50
                    wait(2)
                    character.Humanoid.WalkSpeed = 75
                    wait(2)
                    character.Humanoid.WalkSpeed = 100
                    wait(2)
                    character.Humanoid.WalkSpeed = 0
                end
            end
        end
    end
end

-- Register the event listener
game:GetService("UserInputService").InputBegan:Connect(processKeyboardInput)

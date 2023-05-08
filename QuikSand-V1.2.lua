-- Store references to the player and character objects
local player = game.Players.LocalPlayer
local character = player.Character

-- Function to handle keyboard input
function processKeyboardInput(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.E then
        if not character.Humanoid.FeetPlacementType then
            character.Humanoid.FeetPlacementType = Enum.FootPlacementType.Flat
            
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

-- Register the event listener
game:GetService("UserInputService").InputBegan:Connect(processKeyboardInput)

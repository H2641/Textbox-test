-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExecutorGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame
local frame = Instance.new("Frame")
frame.Name = "ExecutorFrame"
frame.Size = UDim2.new(0, 400, 0, 300) -- Width: 400px, Height: 300px
frame.Position = UDim2.new(0.5, -200, 0.5, -150) -- Centered
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = screenGui

-- Create the TextBox for entering the script
local scriptBox = Instance.new("TextBox")
scriptBox.Name = "ScriptBox"
scriptBox.Size = UDim2.new(0, 380, 0, 150) -- Width: 380px, Height: 150px
scriptBox.Position = UDim2.new(0.5, -190, 0, 20) -- Centered horizontally, 20px from top
scriptBox.PlaceholderText = "Enter your script here..."
scriptBox.MultiLine = true
scriptBox.TextWrapped = true
scriptBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptBox.TextColor3 = Color3.fromRGB(0, 0, 0)
scriptBox.Parent = frame

-- Create the TextBox for entering the player's name
local playerBox = Instance.new("TextBox")
playerBox.Name = "PlayerBox"
playerBox.Size = UDim2.new(0, 380, 0, 50) -- Width: 380px, Height: 50px
playerBox.Position = UDim2.new(0.5, -190, 0, 180) -- Centered horizontally, 10px below the scriptBox
playerBox.PlaceholderText = "Enter player name here..."
playerBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerBox.TextColor3 = Color3.fromRGB(0, 0, 0)
playerBox.Parent = frame

-- Create the Execute Button
local executeButton = Instance.new("TextButton")
executeButton.Name = "ExecuteButton"
executeButton.Size = UDim2.new(0, 380, 0, 50) -- Width: 380px, Height: 50px
executeButton.Position = UDim2.new(0.5, -190, 0, 240) -- Centered horizontally, 10px below the playerBox
executeButton.Text = "Execute"
executeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
executeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
executeButton.Parent = frame

-- Function to execute the script on the specified player
local function executeScript()
    local playerName = playerBox.Text
    local scriptText = scriptBox.Text

    if playerName and scriptText then
        local player = game.Players:FindFirstChild(playerName)
        if player then
            -- Execute the script on the specified player
            -- Note: This is just a placeholder and will need to be replaced with actual execution logic
            print("Executing script on " .. playerName .. ": " .. scriptText)
            
            -- Example: Sending a RemoteEvent to the server to handle the script execution
            -- local remoteEvent = game.ReplicatedStorage:FindFirstChild("ExecuteScriptEvent")
            -- if remoteEvent then
            --     remoteEvent:FireServer(player, scriptText)
            -- end
        else
            print("Player not found: " .. playerName)
        end
    end
end

-- Connect the executeScript function to the ExecuteButton's MouseButton1Click event
executeButton.MouseButton1Click:Connect(executeScript)

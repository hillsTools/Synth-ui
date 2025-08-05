local Synth = loadstring(game:HttpGet("https://raw.githubusercontent.com/hillsTools/Synth-ui/refs/heads/main/Lua"))()

local window = Synth.Window("My Cool UI", UDim2.fromOffset(600, 400))

local mainTab = window.Tab("Main")

local section1 = mainTab.Section("Settings")
section1.Label("Welcome to Synth UI", Enum.TextXAlignment.Center)
section1.Toggle("Enable Feature", function(value) print("Toggle:", value) end, true)
section1.Button("Click Me", function() print("Button clicked!") end)
section1.Slider("Volume", 0, 100, 50, function(value) print("Volume:", value) end)

local dropdown = section1.Dropdown("Options", {"Option 1", "Option 2", "Option 3"}, "Option 1", function(value) 
    print("Selected:", value)
end)

local colorPicker = section1.ColorPicker("Primary Color", Color3.fromRGB(255, 0, 0), function(color)
    print("Color changed to:", color)
end)

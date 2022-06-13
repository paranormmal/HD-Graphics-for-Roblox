--// Leave it in your auto execute folder

repeat task.wait() until game:IsLoaded()
task.wait(0.06)

local lighting = game:GetService("Lighting")
 
while true do
    wait(0.1)
    lighting.ClockTime = lighting.ClockTime + 0.005
end

_,i = pcall(function()
Lighting = game:GetService("Lighting")
Blur = Instance.new("BlurEffect",Lighting)
Color = Instance.new("ColorCorrectionEffect",Lighting)
Sun = Instance.new("SunRaysEffect",Lighting)

Blur.Enabled=not false;Blur.Size=_G.BlurSize
Color.Enabled=not false;Color.Brightness=_G.ColorCorrectionBrightness;Color.Contrast=_G.ColorCorrectionContrast;
Color.Saturation=_G.ColorCorrectionSaturation;Color.TintColor=_G.ColorCorrectionTintColor
Sun.Enabled=not false;Sun.Intensity=_G.SunRaysIntensity;Sun.Spread=_G.SunRaysSpread

function loadLighting()
Lighting.GlobalShadows = _G.GlobalShadows;
Lighting.Brightness = _G.Brightness
Lighting.GeographicLatitude =  _G.GeographicLatitude
Lighting.TimeOfDay = _G.TimeOfDay
Lighting.ExposureCompensation = _G.ExposureCompensation
end
loadLighting()
end)




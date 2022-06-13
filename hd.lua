repeat task.wait() until game:IsLoaded()
task.wait(0.06)

_G.Technology = Future
_G.Ambient = 77, 77, 77
_G.BlurSize = 1
_G.ColorShift_Top = 214, 107, 0
_G.ColorShift_Bottom = 0, 0, 0
_G.ColorCorrectionBrightness = 0.03
_G.ColorCorrectionContrast = 0.1
_G.ColorCorrectionSaturation = 0.80
_G.ColorCorrectionTintColor = Color3.fromRGB(244,244,244)
_G.OutdoorAmbient = 70, 70, 70
_G.SunRaysIntensity = 0.5
_G.SunRaysSpread = 2
_G.Brightness = 1.3
_G.GlobalShadows = true
_G.ShadowSoftness = 100
_G.GeographicLatitude = 350
_G.TimeOfDay = 7.5
_G.ExposureCompensation = 0.03
_G.EnvironmentSpecularScale = 0.125
_G.EnvironmentDiffuseScale = 0.154



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




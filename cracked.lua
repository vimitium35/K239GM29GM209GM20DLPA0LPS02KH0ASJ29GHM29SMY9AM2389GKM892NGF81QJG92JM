-- Cracked UI Script
-- Использует LinoriaLib для создания профессионального интерфейса

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/vimitium35/K239GM29GM209GM20DLPA0LPS02KH0ASJ29GHM29SMY9AM2389GKM892NGF81QJG92JM/refs/heads/main/burmalda.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'nasral.pub cracked by danilkochnevolegovich & atlanta .gg/spiral',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- Создание вкладок
local Tabs = {
    Combat = Window:AddTab('Combat'),
    Visuals = Window:AddTab('Visuals'),
    World = Window:AddTab('World'),
    SkinChanger = Window:AddTab('SkinChanger'),
    Misc = Window:AddTab('Misc'),
    Settings = Window:AddTab('Settings'),
}

-- ═══════════════════════════════════════════════════════════
-- COMBAT TAB
-- ═══════════════════════════════════════════════════════════
local CombatAimbot = Tabs.Combat:AddLeftGroupbox('Aimbot')

CombatAimbot:AddToggle('AimbotEnabled', {
    Text = 'Enable Aimbot',
    Default = false
})

CombatAimbot:AddDropdown('AimKey', {
    Values = { 'E', 'Q', 'C', 'X', 'MB2', 'MB1' },
    Default = 1,
    Multi = false,
    Text = 'Aim Key'
})

CombatAimbot:AddDropdown('TargetPart', {
    Values = { 'Any Part', 'Head', 'Torso', 'HumanoidRootPart' },
    Default = 1,
    Multi = false,
    Text = 'Target Part'
})

CombatAimbot:AddSlider('Smoothness', {
    Text = 'Smoothness',
    Default = 0.1,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false
})

CombatAimbot:AddSlider('Prediction', {
    Text = 'Prediction',
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = false
})

CombatAimbot:AddSlider('FOVSize', {
    Text = 'FOV Size',
    Default = 100,
    Min = 0,
    Max = 600,
    Rounding = 0,
    Compact = false
})

CombatAimbot:AddToggle('ShowFOV', {
    Text = 'Show FOV',
    Default = true
}):AddColorPicker('FOVColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'FOV Color',
    Transparency = 0
})

CombatAimbot:AddToggle('StaticFOV', {
    Text = 'Static FOV',
    Default = false
})

CombatAimbot:AddToggle('DynamicFOV', {
    Text = 'Dynamic FOV',
    Default = false
})

CombatAimbot:AddToggle('WallCheck', {
    Text = 'Wall Check',
    Default = true
})

CombatAimbot:AddToggle('StickyAim', {
    Text = 'Sticky Aim',
    Default = true
})

CombatAimbot:AddToggle('SkipDowned', {
    Text = 'Skip Downed',
    Default = true
})

CombatAimbot:AddToggle('EnableTracer', {
    Text = 'Enable Tracer',
    Default = false
}):AddColorPicker('TracerColor', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Tracer Color',
    Transparency = 0
})

CombatAimbot:AddDivider()

CombatAimbot:AddToggle('WhiteListToggle', {
    Text = 'White List (skip)',
    Default = false
})

CombatAimbot:AddDropdown('WhiteList', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'White List'
})

CombatAimbot:AddDivider()

CombatAimbot:AddToggle('TargetListToggle', {
    Text = 'Target List (only)',
    Default = false
})

CombatAimbot:AddDropdown('TargetList', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'Target List'
})

-- Правая сторона - Rage Bot
local CombatRageBot = Tabs.Combat:AddRightGroupbox('Rage Bot')

CombatRageBot:AddToggle('RageBotEnabled', {
    Text = 'Enable Rage Bot',
    Default = false
}):AddKeyPicker('RageBotKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Rage Bot Keybind',
    NoUI = false
})

CombatRageBot:AddSlider('FireRate', {
    Text = 'Fire Rate',
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('ShowFOVCircle', {
    Text = 'Show FOV Circle',
    Default = false
}):AddColorPicker('RageFOVColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'FOV Circle Color',
    Transparency = 0
})

CombatRageBot:AddSlider('FOVRadius', {
    Text = 'FOV Radius',
    Default = 150,
    Min = 0,
    Max = 600,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('CheckDowned', {
    Text = 'Check downed',
    Default = false
})

CombatRageBot:AddToggle('CheckTeam', {
    Text = 'Check team',
    Default = false
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('RageWhiteList', {
    Text = 'White List',
    Default = false
})

CombatRageBot:AddDropdown('RageWhiteListDropdown', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'White List'
})

CombatRageBot:AddToggle('RageTargetList', {
    Text = 'Target List',
    Default = false
})

CombatRageBot:AddDropdown('RageTargetListDropdown', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'Target List'
})

CombatRageBot:AddDivider()

CombatRageBot:AddLabel('Hitsounds:')

CombatRageBot:AddToggle('EnableHitsounds', {
    Text = 'Enable hitsounds',
    Default = false
})

CombatRageBot:AddDropdown('SoundType', {
    Values = { 'Rust', 'Neverlose', 'Skeet', 'Bubble', 'Bell' },
    Default = 1,
    Multi = false,
    Text = 'Sound type'
})

CombatRageBot:AddSlider('Volume', {
    Text = 'Volume',
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false
})

CombatRageBot:AddButton({
    Text = 'Preview Hitsound',
    Func = function()
        print('Playing hitsound preview...')
    end
})

CombatRageBot:AddDivider()

CombatRageBot:AddLabel('Combat Extras:')

CombatRageBot:AddToggle('AntiAim', {
    Text = 'Anti-Aim',
    Default = false
}):AddKeyPicker('AntiAimKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Anti-Aim Keybind',
    NoUI = false
})

CombatRageBot:AddDropdown('AntiAimMode', {
    Values = { 'Sideways', 'Spin', 'Jitter', 'Random' },
    Default = 1,
    Multi = false,
    Text = 'Mode'
})

CombatRageBot:AddSlider('AntiAimSpeed', {
    Text = 'Speed',
    Default = 20,
    Min = 0,
    Max = 60,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('DamageIndicators', {
    Text = 'Damage Indicators',
    Default = true
})

CombatRageBot:AddDropdown('DamageIndicatorStyle', {
    Values = { 'Classic', 'Modern', 'Minimal' },
    Default = 1,
    Multi = false,
    Text = 'Style'
})

CombatRageBot:AddLabel('Normal Dmg Color'):AddColorPicker('NormalDmgColor', {
    Default = Color3.fromRGB(255, 255, 0),
    Title = 'Normal Damage Color',
    Transparency = 0
})

CombatRageBot:AddLabel('Big Dmg Color (≥30)'):AddColorPicker('BigDmgColor', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Big Damage Color',
    Transparency = 0
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('RakNetDesync', {
    Text = 'RakNet Desync',
    Default = false
}):AddKeyPicker('RakNetDesyncKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'RakNet Desync Keybind',
    NoUI = false
})

CombatRageBot:AddButton({
    Text = 'Update Fake Pos',
    Func = function()
        print('Updating fake position...')
    end
})

CombatRageBot:AddDivider()

CombatRageBot:AddLabel('Combat Tools:')

CombatRageBot:AddToggle('CustomCrosshair', {
    Text = 'Custom Crosshair',
    Default = false
})

CombatRageBot:AddLabel('Color:'):AddColorPicker('CrosshairColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Crosshair Color',
    Transparency = 0
})

CombatRageBot:AddSlider('CrosshairSize', {
    Text = 'Size',
    Default = 32,
    Min = 0,
    Max = 40,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddSlider('CrosshairGap', {
    Text = 'Gap',
    Default = 15,
    Min = 0,
    Max = 20,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddSlider('CrosshairThickness', {
    Text = 'Thickness',
    Default = 3,
    Min = 0,
    Max = 6,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddToggle('CenterDot', {
    Text = 'Center Dot',
    Default = false
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('CustomHitMarker', {
    Text = 'Custom HitMarker',
    Default = false
})

CombatRageBot:AddDropdown('HitMarkerType', {
    Values = { 'Trinity', 'Cross', 'Circle', 'Square' },
    Default = 1,
    Multi = false,
    Text = 'HitMarker Type'
})

CombatRageBot:AddButton({
    Text = 'Preview HitMarker',
    Func = function()
        print('Previewing hitmarker...')
    end
})

CombatRageBot:AddDivider()

CombatRageBot:AddToggle('EnableHitSound', {
    Text = 'Enable HitSound',
    Default = false
})

CombatRageBot:AddDropdown('HitSoundType', {
    Values = { 'Default', 'Rust', 'Neverlose', 'Skeet', 'Bubble', 'Bell' },
    Default = 1,
    Multi = false,
    Text = 'HitSound Type'
})

CombatRageBot:AddSlider('HitSoundVolume', {
    Text = 'HitSound Volume',
    Default = 5,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = false
})

CombatRageBot:AddButton({
    Text = 'Preview HitSound',
    Func = function()
        print('Previewing hitsound...')
    end
})

-- Секция Features под Aimbot
local CombatFeatures = Tabs.Combat:AddLeftGroupbox('Features')

CombatFeatures:AddToggle('MeleeAura', {
    Text = 'Melee Aura',
    Default = false
}):AddKeyPicker('MeleeAuraKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Melee Aura Keybind',
    NoUI = false
})

CombatFeatures:AddToggle('InstantReload', {
    Text = 'Instant Reload',
    Default = false
})

CombatFeatures:AddToggle('NoRecoil', {
    Text = 'No Recoil',
    Default = false
})

CombatFeatures:AddToggle('ArmsChams', {
    Text = 'Arms Chams',
    Default = false
}):AddColorPicker('ArmsChamsColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Arms Chams Color',
    Transparency = 0
})

CombatFeatures:AddToggle('GunChams', {
    Text = 'Gun Chams',
    Default = false
}):AddColorPicker('GunChamsColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Gun Chams Color',
    Transparency = 0
})

CombatFeatures:AddToggle('SelfChams', {
    Text = 'Self Chams',
    Default = false
}):AddColorPicker('SelfChamsColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Self Chams Color',
    Transparency = 0
})

CombatFeatures:AddToggle('Dsync', {
    Text = 'Dsync (Update position "U")',
    Default = false,
    Risky = true
}):AddKeyPicker('DsyncKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Dsync Keybind',
    NoUI = false
})

-- Секция Kill Effects под Features
local CombatKillEffects = Tabs.Combat:AddLeftGroupbox('Kill Effects')

CombatKillEffects:AddToggle('KillEffects', {
    Text = 'Kill Effects',
    Default = true
})

CombatKillEffects:AddDropdown('KillEffect', {
    Values = { 'HyperVolt', 'Sparkles', 'Fire', 'Smoke', 'None' },
    Default = 1,
    Multi = false,
    Text = 'Kill Effect'
})

CombatKillEffects:AddLabel('Kill Effect Color'):AddColorPicker('KillEffectColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Kill Effect Color',
    Transparency = 0
})

CombatKillEffects:AddToggle('SelfAura', {
    Text = 'Self Aura',
    Default = false
}):AddColorPicker('SelfAuraColor', {
    Default = Color3.fromRGB(150, 100, 255),
    Title = 'Self Aura Color',
    Transparency = 0
})

CombatKillEffects:AddDropdown('AuraStyle', {
    Values = { 'Flushed', 'Circle', 'Spiral', 'None' },
    Default = 1,
    Multi = false,
    Text = 'Aura Style'
})

-- ═══════════════════════════════════════════════════════════
-- VISUALS TAB
-- ═══════════════════════════════════════════════════════════
local VisualsESP = Tabs.Visuals:AddLeftGroupbox('ESP Settings')

VisualsESP:AddToggle('EnableESP', {
    Text = 'Enable ESP',
    Default = false
})

VisualsESP:AddDropdown('ESPFont', {
    Values = { 'Default', 'Code', 'Gotham', 'GothamBold' },
    Default = 1,
    Multi = false,
    Text = 'ESP Font'
})

VisualsESP:AddToggle('ShowBox', {
    Text = 'Show Box',
    Default = false
}):AddColorPicker('BoxColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Box Color',
    Transparency = 0
})

VisualsESP:AddDropdown('BoxStyle', {
    Values = { 'Box', 'Corner Box', '3D Box' },
    Default = 1,
    Multi = false,
    Text = 'Box Style'
})

VisualsESP:AddToggle('BoxOutline', {
    Text = 'Box Outline',
    Default = false
})

VisualsESP:AddToggle('FilledBox', {
    Text = 'Filled Box',
    Default = false
}):AddColorPicker('FilledBoxColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Filled Box Color',
    Transparency = 0.85
})

VisualsESP:AddSlider('FillTransparency', {
    Text = 'Fill Transparency',
    Default = 0.85,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false
})

VisualsESP:AddToggle('Gradient', {
    Text = 'Gradient',
    Default = false
}):AddColorPicker('GradientColor1', {
    Default = Color3.fromRGB(255, 0, 255),
    Title = 'Gradient Color 1',
    Transparency = 0
}):AddColorPicker('GradientColor2', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Gradient Color 2',
    Transparency = 0
})

VisualsESP:AddSlider('AnimationSpeed', {
    Text = 'Animation Speed',
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddToggle('ShowName', {
    Text = 'Show Name',
    Default = false
}):AddColorPicker('NameColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Name Color',
    Transparency = 0
})

VisualsESP:AddToggle('ShowDistance', {
    Text = 'Show Distance',
    Default = false
}):AddColorPicker('DistanceColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Distance Color',
    Transparency = 0
})

VisualsESP:AddToggle('ShowHealthBar', {
    Text = 'Show Health Bar',
    Default = false
}):AddColorPicker('HealthBarLow', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Low Health Color',
    Transparency = 0
}):AddColorPicker('HealthBarHigh', {
    Default = Color3.fromRGB(0, 255, 0),
    Title = 'High Health Color',
    Transparency = 0
})

VisualsESP:AddSlider('HPBarWidth', {
    Text = 'HP Bar Width',
    Default = 3,
    Min = 1,
    Max = 8,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddDropdown('HPBarPosition', {
    Values = { 'Left', 'Right', 'Top', 'Bottom' },
    Default = 1,
    Multi = false,
    Text = 'HP Bar Position'
})

VisualsESP:AddToggle('HPBarOutline', {
    Text = 'HP Bar Outline',
    Default = false
})

VisualsESP:AddToggle('ShowHealthNum', {
    Text = 'Show Health Num',
    Default = false
}):AddColorPicker('HealthNumColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Health Num Color',
    Transparency = 0
})

VisualsESP:AddToggle('ShowWeapon', {
    Text = 'Show Weapon',
    Default = false
}):AddColorPicker('WeaponColor', {
    Default = Color3.fromRGB(255, 255, 0),
    Title = 'Weapon Color',
    Transparency = 0
})

VisualsESP:AddToggle('ShowTracers', {
    Text = 'Show Tracers',
    Default = false
}):AddColorPicker('TracerColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Tracer Color',
    Transparency = 0
})

VisualsESP:AddSlider('MaxDistance', {
    Text = 'Max Distance',
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddToggle('FadeESP', {
    Text = 'Fade ESP',
    Default = false
})

VisualsESP:AddToggle('WallCheck', {
    Text = 'Wall Check',
    Default = false,
    Tooltip = 'Hide ESP when player behind wall'
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('WhiteListHide', {
    Text = 'White List (hide)',
    Default = false
})

VisualsESP:AddDropdown('ESPWhiteList', {
    SpecialType = 'Player',
    Text = 'White List'
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('TargetListOnly', {
    Text = 'Target List (only)',
    Default = false
})

VisualsESP:AddDropdown('ESPTargetList', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'Target List'
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('EnableChams', {
    Text = 'Enable Chams',
    Default = false
})

VisualsESP:AddLabel('Chams Visible Color:'):AddColorPicker('ChamsVisibleColor', {
    Default = Color3.fromRGB(255, 0, 255),
    Title = 'Chams Visible Color',
    Transparency = 0
})

VisualsESP:AddSlider('ChamsVisibleTransparency', {
    Text = 'Chams Visible Transparency',
    Default = 0.3,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddLabel('Chams Occluded Color:'):AddColorPicker('ChamsOccludedColor', {
    Default = Color3.fromRGB(255, 0, 255),
    Title = 'Chams Occluded Color',
    Transparency = 0
})

VisualsESP:AddSlider('ChamsOccludedTransparency', {
    Text = 'Chams Occluded Transparency',
    Default = 0.7,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('DLight', {
    Text = 'DLight',
    Default = false
}):AddColorPicker('DLightColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'DLight Color',
    Transparency = 0
})

VisualsESP:AddSlider('DLightHeight', {
    Text = 'Height',
    Default = 5,
    Min = 0,
    Max = 20,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddSlider('DLightRadius', {
    Text = 'Radius',
    Default = 20,
    Min = 0,
    Max = 60,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddSlider('DLightBrightness', {
    Text = 'Brightness',
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('Trail', {
    Text = 'Trail',
    Default = false
}):AddColorPicker('TrailColor1', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Trail Color 1',
    Transparency = 0
}):AddColorPicker('TrailColor2', {
    Default = Color3.fromRGB(0, 0, 255),
    Title = 'Trail Color 2',
    Transparency = 0
})

VisualsESP:AddDropdown('TrailStyle', {
    Values = { 'Default', 'Pulse', 'Fade', 'Rainbow' },
    Default = 1,
    Multi = false,
    Text = 'Trail Style'
})

VisualsESP:AddSlider('TrailLifetime', {
    Text = 'Lifetime',
    Default = 0.5,
    Min = 0,
    Max = 3,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddSlider('TrailThickness', {
    Text = 'Thickness',
    Default = 0.2,
    Min = 0,
    Max = 2,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddSlider('TrailTransparency', {
    Text = 'Transparency',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddDivider()

VisualsESP:AddToggle('JumpCircles', {
    Text = 'Jump Circles',
    Default = false
}):AddColorPicker('JumpCirclesColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Jump Circles Color',
    Transparency = 0
})

VisualsESP:AddSlider('JumpCirclesRadius', {
    Text = 'Radius',
    Default = 4,
    Min = 0,
    Max = 15,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddSlider('JumpCirclesLifetime', {
    Text = 'Lifetime',
    Default = 0.6,
    Min = 0,
    Max = 2,
    Rounding = 1,
    Compact = false
})

VisualsESP:AddSlider('JumpCirclesThickness', {
    Text = 'Thickness',
    Default = 2,
    Min = 0,
    Max = 6,
    Rounding = 0,
    Compact = false
})

VisualsESP:AddDivider()

VisualsESP:AddLabel('Skybox:')

VisualsESP:AddToggle('EnableSkybox', {
    Text = 'Enable Skybox',
    Default = false
})

VisualsESP:AddDropdown('SkyboxType', {
    Values = { 'Nebula', 'Space', 'Sunset', 'Night', 'Custom' },
    Default = 1,
    Multi = false,
    Text = 'Skybox Type'
})

VisualsESP:AddDivider()

VisualsESP:AddLabel('Level Gui:')

VisualsESP:AddToggle('EnableLvlColor', {
    Text = 'Enable lvl color',
    Default = false
})

VisualsESP:AddLabel('Level Bar'):AddColorPicker('LevelBarColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Level Bar Color',
    Transparency = 0
})

VisualsESP:AddLabel('Level Bar2'):AddColorPicker('LevelBar2Color', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Level Bar2 Color',
    Transparency = 0
})

VisualsESP:AddLabel('Level Box'):AddColorPicker('LevelBoxColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Level Box Color',
    Transparency = 0
})

VisualsESP:AddDivider()

VisualsESP:AddInput('XPText', {
    Default = '0/1000 XP',
    Numeric = false,
    Finished = true,
    Text = 'XP Text',
    Placeholder = '0/1000 XP'
})

VisualsESP:AddLabel('XP Text Color'):AddColorPicker('XPTextColor', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'XP Text Color',
    Transparency = 0
})

VisualsESP:AddButton({
    Text = 'Apply XP',
    Func = function()
        print('Applying XP...')
    end
})

VisualsESP:AddButton({
    Text = 'Reset XP',
    Func = function()
        print('Resetting XP...')
    end
})

VisualsESP:AddDivider()

VisualsESP:AddInput('LevelText', {
    Default = '',
    Numeric = false,
    Finished = true,
    Text = 'Level Text',
    Placeholder = ''
})

VisualsESP:AddLabel('Level Text Color'):AddColorPicker('LevelTextColor', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Level Text Color',
    Transparency = 0
})

VisualsESP:AddButton({
    Text = 'Apply Lvl',
    Func = function()
        print('Applying level...')
    end
})

VisualsESP:AddButton({
    Text = 'Reset Lvl',
    Func = function()
        print('Resetting level...')
    end
})

local VisualsESPRight = Tabs.Visuals:AddRightGroupbox('Bullet Beam')

VisualsESPRight:AddToggle('EnableBulletBeam', {
    Text = 'Enable BulletBeam',
    Default = false
}):AddColorPicker('BulletBeamColor1', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Beam Color 1',
    Transparency = 0
}):AddColorPicker('BulletBeamColor2', {
    Default = Color3.fromRGB(255, 255, 0),
    Title = 'Beam Color 2',
    Transparency = 0
})

VisualsESPRight:AddSlider('BeamThickness', {
    Text = 'Thickness',
    Default = 0.1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false,
    Suffix = ' studs'
})

VisualsESPRight:AddSlider('BeamLifetime', {
    Text = 'Lifetime',
    Default = 2,
    Min = 0,
    Max = 5,
    Rounding = 0,
    Compact = false,
    Suffix = 's'
})

VisualsESPRight:AddSlider('BeamTransparency', {
    Text = 'Transparency',
    Default = 0.7,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false
})

VisualsESPRight:AddDropdown('BeamType', {
    Values = { 'Beam', 'Line', 'Laser' },
    Default = 1,
    Multi = false,
    Text = 'Type'
})

VisualsESPRight:AddDropdown('BeamTexture', {
    Values = { 'Classic', 'Lightning', 'Smooth', 'Custom' },
    Default = 1,
    Multi = false,
    Text = 'Texture'
})

VisualsESPRight:AddInput('CustomTextureID', {
    Default = 'rbxassetid://...',
    Numeric = false,
    Finished = true,
    Text = 'Custom Texture ID',
    Placeholder = 'rbxassetid://...'
})

VisualsESPRight:AddButton({
    Text = 'Clear Tracers',
    Func = function()
        print('Clearing bullet tracers...')
    end
})

VisualsESPRight:AddLabel('Active: 0')

VisualsESPRight:AddDivider()

local VisualsCustomCursor = Tabs.Visuals:AddRightGroupbox('Custom Cursor')

VisualsCustomCursor:AddToggle('EnableCustomCursor', {
    Text = 'Enable Custom Cursor',
    Default = false
})

VisualsCustomCursor:AddLabel('Color'):AddColorPicker('CustomCursorColor', {
    Default = Color3.fromRGB(255, 255, 0),
    Title = 'Cursor Color',
    Transparency = 0
})

VisualsCustomCursor:AddToggle('RGBMode', {
    Text = 'RGB Mode',
    Default = false
})

VisualsCustomCursor:AddToggle('SpinPulse', {
    Text = 'Spin + Pulse',
    Default = false
})

VisualsCustomCursor:AddSlider('CursorSpinSpeed', {
    Text = 'Spin Speed',
    Default = 1.5,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = false
})

VisualsCustomCursor:AddSlider('CursorSize', {
    Text = 'Size',
    Default = 14,
    Min = 0,
    Max = 40,
    Rounding = 0,
    Compact = false
})

VisualsCustomCursor:AddSlider('CursorCenterGap', {
    Text = 'Center Gap',
    Default = 4,
    Min = 0,
    Max = 20,
    Rounding = 0,
    Compact = false
})

local VisualsWorld = Tabs.Visuals:AddRightGroupbox('World Visuals')

VisualsWorld:AddToggle('Fullbright', {
    Text = 'Fullbright',
    Default = false,
    Tooltip = 'Убирает темноту'
})

VisualsWorld:AddToggle('NoFog', {
    Text = 'No Fog',
    Default = false,
    Tooltip = 'Убирает туман'
})

VisualsWorld:AddSlider('FOVChanger', {
    Text = 'FOV',
    Default = 70,
    Min = 70,
    Max = 120,
    Rounding = 0,
    Compact = false
})

VisualsWorld:AddToggle('RemoveShadows', {
    Text = 'Remove Shadows',
    Default = false,
    Tooltip = 'Убирает тени для повышения FPS'
})

-- ═══════════════════════════════════════════════════════════
-- WORLD TAB
-- ═══════════════════════════════════════════════════════════
local WorldAtmosphere = Tabs.World:AddLeftGroupbox('Atmosphere')

WorldAtmosphere:AddToggle('EnableAtmosphere', {
    Text = 'Enable Atmosphere',
    Default = false
})

WorldAtmosphere:AddSlider('AtmosphereDensity', {
    Text = 'Density',
    Default = 0.3,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

WorldAtmosphere:AddSlider('AtmosphereOffset', {
    Text = 'Offset',
    Default = 0.25,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Compact = false
})

WorldAtmosphere:AddLabel('Color:'):AddColorPicker('AtmosphereColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Atmosphere Color',
    Transparency = 0
})

WorldAtmosphere:AddLabel('Decay:'):AddColorPicker('AtmosphereDecay', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Atmosphere Decay',
    Transparency = 0
})

WorldAtmosphere:AddSlider('AtmosphereGlare', {
    Text = 'Glare',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

WorldAtmosphere:AddSlider('AtmosphereHaze', {
    Text = 'Haze',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

local WorldEffects = Tabs.World:AddLeftGroupbox('World Effects')

WorldEffects:AddDropdown('ActiveEffect', {
    Values = { 'None', 'Bloom', 'Blur', 'ColorCorrection', 'SunRays' },
    Default = 1,
    Multi = false,
    Text = 'Active Effect'
})

WorldEffects:AddDivider()

WorldEffects:AddToggle('CustomBloom', {
    Text = 'Custom Bloom',
    Default = false
})

WorldEffects:AddSlider('BloomIntensity', {
    Text = 'Bloom Intensity',
    Default = 0.5,
    Min = 0,
    Max = 3,
    Rounding = 1,
    Compact = false
})

WorldEffects:AddSlider('BloomSize', {
    Text = 'Bloom Size',
    Default = 24,
    Min = 0,
    Max = 56,
    Rounding = 0,
    Compact = false
})

WorldEffects:AddDivider()

WorldEffects:AddToggle('MotionBlur', {
    Text = 'Motion Blur',
    Default = false
})

WorldEffects:AddSlider('BlurSize', {
    Text = 'Blur Size',
    Default = 10,
    Min = 0,
    Max = 56,
    Rounding = 0,
    Compact = false
})

local WorldPresets = Tabs.World:AddLeftGroupbox('Presets')

WorldPresets:AddButton({
    Text = 'Sunset',
    Func = function()
        print('Applying Sunset preset...')
    end
})

WorldPresets:AddButton({
    Text = 'Night',
    Func = function()
        print('Applying Night preset...')
    end
})

WorldPresets:AddButton({
    Text = 'Cyberpunk',
    Func = function()
        print('Applying Cyberpunk preset...')
    end
})

WorldPresets:AddButton({
    Text = 'Toxic',
    Func = function()
        print('Applying Toxic preset...')
    end
})

WorldPresets:AddButton({
    Text = 'Purple',
    Func = function()
        print('Applying Purple preset...')
    end
})

WorldPresets:AddDivider()

WorldPresets:AddButton({
    Text = 'Reset All',
    Func = function()
        print('Resetting all world settings...')
    end
})

local WorldLighting = Tabs.World:AddRightGroupbox('Lighting')

WorldLighting:AddToggle('EnableLighting', {
    Text = 'Enable Lighting',
    Default = false
})

WorldLighting:AddLabel('Ambient:'):AddColorPicker('LightingAmbient', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Ambient Color',
    Transparency = 0
})

WorldLighting:AddLabel('Outdoor Ambient:'):AddColorPicker('LightingOutdoorAmbient', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Outdoor Ambient Color',
    Transparency = 0
})

WorldLighting:AddSlider('LightingBrightness', {
    Text = 'Brightness',
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 0,
    Compact = false
})

WorldLighting:AddSlider('ClockTime', {
    Text = 'Clock Time',
    Default = 14,
    Min = 0,
    Max = 24,
    Rounding = 0,
    Compact = false
})

local WorldTools = Tabs.World:AddRightGroupbox('World Tools')

WorldTools:AddToggle('FreezeTime', {
    Text = 'Freeze Time',
    Default = false
})

WorldTools:AddSlider('FreezeAtHour', {
    Text = 'Freeze At (hour)',
    Default = 14,
    Min = 0,
    Max = 24,
    Rounding = 0,
    Compact = false
})

WorldTools:AddDivider()

WorldTools:AddSlider('SunSize', {
    Text = 'Sun Size',
    Default = 21,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false
})

WorldTools:AddSlider('MoonSize', {
    Text = 'Moon Size',
    Default = 11,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false
})

WorldTools:AddDivider()

WorldTools:AddSlider('BloomThreshold', {
    Text = 'Bloom Threshold',
    Default = 0.8,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = false
})

local WorldSound = Tabs.World:AddRightGroupbox('Sound')

WorldSound:AddDropdown('AmbientSound', {
    Values = { 'None', 'Rain', 'Wind', 'Forest', 'City' },
    Default = 1,
    Multi = false,
    Text = 'Ambient Sound'
})

WorldSound:AddSlider('AmbientVolume', {
    Text = 'Ambient Volume',
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false
})

-- ═══════════════════════════════════════════════════════════
-- SKINCHANGER TAB
-- ═══════════════════════════════════════════════════════════
local SkinChangerLeft = Tabs.SkinChanger:AddLeftGroupbox('Skin Changer')

SkinChangerLeft:AddToggle('EnableSkinChanger', {
    Text = 'Enable SkinChanger',
    Default = false
})

SkinChangerLeft:AddDivider()

SkinChangerLeft:AddLabel('Melees')

SkinChangerLeft:AddDropdown('BalisongSkin', {
    Values = { 'None', 'Fade', 'Tiger Tooth', 'Doppler', 'Marble Fade' },
    Default = 1,
    Multi = false,
    Text = 'Balisong'
})

SkinChangerLeft:AddDropdown('BatSkin', {
    Values = { 'None', 'Neon', 'Wood', 'Metal' },
    Default = 1,
    Multi = false,
    Text = 'Bat'
})

SkinChangerLeft:AddDropdown('ChainsawSkin', {
    Values = { 'None', 'Rusty', 'Chrome', 'Gold' },
    Default = 1,
    Multi = false,
    Text = 'Chainsaw'
})

SkinChangerLeft:AddDropdown('EradicatorSkin', {
    Values = { 'None', 'Plasma', 'Laser', 'Energy' },
    Default = 1,
    Multi = false,
    Text = 'ERADICATOR'
})

SkinChangerLeft:AddDropdown('FireAxeSkin', {
    Values = { 'None', 'Firefighter', 'Lumberjack', 'Tactical' },
    Default = 1,
    Multi = false,
    Text = 'Fire-Axe'
})

SkinChangerLeft:AddDropdown('KatanaSkin', {
    Values = { 'None', 'Samurai', 'Dragon', 'Demon' },
    Default = 1,
    Multi = false,
    Text = 'Katana'
})

SkinChangerLeft:AddDropdown('MacheteSkin', {
    Values = { 'None', 'Jungle', 'Military', 'Survival' },
    Default = 1,
    Multi = false,
    Text = 'Machete'
})

SkinChangerLeft:AddDropdown('RamboSkin', {
    Values = { 'None', 'Classic', 'Tactical', 'Combat' },
    Default = 1,
    Multi = false,
    Text = 'Rambo'
})

SkinChangerLeft:AddDropdown('ScytheSkin', {
    Values = { 'None', 'Reaper', 'Harvest', 'Death' },
    Default = 1,
    Multi = false,
    Text = 'Scythe'
})

SkinChangerLeft:AddDropdown('ShivSkin', {
    Values = { 'None', 'Prison', 'Rusty', 'Sharp' },
    Default = 1,
    Multi = false,
    Text = 'Shiv'
})

SkinChangerLeft:AddDropdown('SlayerSwordSkin', {
    Values = { 'None', 'Demon Slayer', 'Holy', 'Cursed' },
    Default = 1,
    Multi = false,
    Text = 'SlayerSword'
})

SkinChangerLeft:AddDropdown('WrenchSkin', {
    Values = { 'None', 'Mechanic', 'Rusty', 'Chrome' },
    Default = 1,
    Multi = false,
    Text = 'Wrench'
})

local SkinChangerRight = Tabs.SkinChanger:AddRightGroupbox('Controls')

SkinChangerRight:AddLabel('Pistols')

SkinChangerRight:AddDropdown('BerettaSkin', {
    Values = { 'None', 'Elite', 'Fade', 'Asiimov' },
    Default = 1,
    Multi = false,
    Text = 'Beretta'
})

SkinChangerRight:AddDropdown('DeagleSkin', {
    Values = { 'None', 'Blaze', 'Crimson Web', 'Hypnotic' },
    Default = 1,
    Multi = false,
    Text = 'Deagle'
})

SkinChangerRight:AddDropdown('FNP45Skin', {
    Values = { 'None', 'Tactical', 'Urban', 'Desert' },
    Default = 1,
    Multi = false,
    Text = 'FNP-45'
})

SkinChangerRight:AddDropdown('G17Skin', {
    Values = { 'None', 'Fade', 'Water Elemental', 'Dragon King' },
    Default = 1,
    Multi = false,
    Text = 'G-17'
})

SkinChangerRight:AddDropdown('G18Skin', {
    Values = { 'None', 'Fade', 'Grinder', 'Twilight Galaxy' },
    Default = 1,
    Multi = false,
    Text = 'G-18'
})

SkinChangerRight:AddDropdown('G18XSkin', {
    Values = { 'None', 'Extended', 'Tactical', 'Custom' },
    Default = 1,
    Multi = false,
    Text = 'G-18-X'
})

SkinChangerRight:AddDropdown('HawkeyeSkin', {
    Values = { 'None', 'Sniper', 'Elite', 'Marksman' },
    Default = 1,
    Multi = false,
    Text = 'Hawkeye'
})

SkinChangerRight:AddDropdown('M1911Skin', {
    Values = { 'None', 'Classic', 'WWII', 'Modern' },
    Default = 1,
    Multi = false,
    Text = 'M1911'
})

SkinChangerRight:AddDropdown('MagnumSkin', {
    Values = { 'None', 'Revolver', 'Chrome', 'Gold' },
    Default = 1,
    Multi = false,
    Text = 'Magnum'
})

SkinChangerRight:AddDropdown('TEC9Skin', {
    Values = { 'None', 'Isaac', 'Fuel Injector', 'Avalanche' },
    Default = 1,
    Multi = false,
    Text = 'TEC-9'
})

SkinChangerRight:AddDivider()

SkinChangerRight:AddLabel('Rifles')

SkinChangerRight:AddDropdown('AKMSkin', {
    Values = { 'None', 'Redline', 'Vulcan', 'Fire Serpent' },
    Default = 1,
    Multi = false,
    Text = 'AKM'
})

SkinChangerRight:AddDropdown('AKS74USkin', {
    Values = { 'None', 'Cartel', 'Jaguar', 'Elite Build' },
    Default = 1,
    Multi = false,
    Text = 'AKS-74U'
})

SkinChangerRight:AddDropdown('AR15Skin', {
    Values = { 'None', 'Tactical', 'Desert', 'Urban' },
    Default = 1,
    Multi = false,
    Text = 'AR-15'
})

SkinChangerRight:AddDropdown('AUGSkin', {
    Values = { 'None', 'Chameleon', 'Akihabara Accept', 'Hot Rod' },
    Default = 1,
    Multi = false,
    Text = 'AUG'
})

SkinChangerRight:AddDropdown('M16Skin', {
    Values = { 'None', 'Vietnam', 'Modern', 'Tactical' },
    Default = 1,
    Multi = false,
    Text = 'M16'
})

SkinChangerRight:AddDropdown('M4A1Skin', {
    Values = { 'None', 'Howl', 'Asiimov', 'Hyper Beast' },
    Default = 1,
    Multi = false,
    Text = 'M4A1'
})

SkinChangerRight:AddDropdown('SCARHSkin', {
    Values = { 'None', 'Cyrex', 'Splash Jam', 'Cardiac' },
    Default = 1,
    Multi = false,
    Text = 'SCAR-H'
})

SkinChangerRight:AddDivider()

SkinChangerRight:AddLabel('SMGs')

SkinChangerRight:AddDropdown('BizonSkin', {
    Values = { 'None', 'Judgement of Anubis', 'Fuel Rod', 'Antique' },
    Default = 1,
    Multi = false,
    Text = 'Bizon'
})

SkinChangerRight:AddDropdown('KrissSkin', {
    Values = { 'None', 'Super V', 'Tactical', 'Custom' },
    Default = 1,
    Multi = false,
    Text = 'Kriss'
})

SkinChangerRight:AddDropdown('MAC10Skin', {
    Values = { 'None', 'Fade', 'Neon Rider', 'Graven' },
    Default = 1,
    Multi = false,
    Text = 'MAC-10'
})

SkinChangerRight:AddDropdown('MP5Skin', {
    Values = { 'None', 'Lab Rats', 'Phosphor', 'Nitro' },
    Default = 1,
    Multi = false,
    Text = 'MP5'
})

SkinChangerRight:AddDropdown('MP7Skin', {
    Values = { 'None', 'Nemesis', 'Bloodsport', 'Fade' },
    Default = 1,
    Multi = false,
    Text = 'MP7'
})

SkinChangerRight:AddDropdown('P90Skin', {
    Values = { 'None', 'Asiimov', 'Death by Kitty', 'Trigon' },
    Default = 1,
    Multi = false,
    Text = 'P90'
})

SkinChangerRight:AddDropdown('UMP45Skin', {
    Values = { 'None', 'Primal Saber', 'Momentum', 'Arctic Wolf' },
    Default = 1,
    Multi = false,
    Text = 'UMP-45'
})

SkinChangerRight:AddDivider()

SkinChangerRight:AddLabel('Snipers')

SkinChangerRight:AddDropdown('AWPSkin', {
    Values = { 'None', 'Dragon Lore', 'Asiimov', 'Hyper Beast' },
    Default = 1,
    Multi = false,
    Text = 'AWP'
})

SkinChangerRight:AddDropdown('BarrettSkin', {
    Values = { 'None', 'M82A1', 'Desert', 'Tactical' },
    Default = 1,
    Multi = false,
    Text = 'Barrett'
})

SkinChangerRight:AddDropdown('DragunovSkin', {
    Values = { 'None', 'Soviet', 'Modern', 'Tactical' },
    Default = 1,
    Multi = false,
    Text = 'Dragunov'
})

SkinChangerRight:AddDropdown('InterventionSkin', {
    Values = { 'None', 'CheyTac', 'Arctic', 'Urban' },
    Default = 1,
    Multi = false,
    Text = 'Intervention'
})

SkinChangerRight:AddDropdown('M200Skin', {
    Values = { 'None', 'Intervention', 'Tactical', 'Custom' },
    Default = 1,
    Multi = false,
    Text = 'M200'
})

SkinChangerRight:AddDropdown('MosinSkin', {
    Values = { 'None', 'Nagant', 'WWII', 'Modern' },
    Default = 1,
    Multi = false,
    Text = 'Mosin'
})

SkinChangerRight:AddDropdown('ScoutSkin', {
    Values = { 'None', 'Blood in the Water', 'Acid Fade', 'Detour' },
    Default = 1,
    Multi = false,
    Text = 'Scout'
})

SkinChangerRight:AddDivider()

SkinChangerRight:AddLabel('Shotguns')

SkinChangerRight:AddDropdown('AA12Skin', {
    Values = { 'None', 'Auto', 'Tactical', 'Combat' },
    Default = 1,
    Multi = false,
    Text = 'AA-12'
})

SkinChangerRight:AddDropdown('DBSkin', {
    Values = { 'None', 'Double Barrel', 'Sawed-Off', 'Classic' },
    Default = 1,
    Multi = false,
    Text = 'DB'
})

SkinChangerRight:AddDropdown('M1014Skin', {
    Values = { 'None', 'Benelli', 'Tactical', 'Urban' },
    Default = 1,
    Multi = false,
    Text = 'M1014'
})

SkinChangerRight:AddDropdown('MossbergSkin', {
    Values = { 'None', '500', 'Tactical', 'Police' },
    Default = 1,
    Multi = false,
    Text = 'Mossberg'
})

SkinChangerRight:AddDropdown('RemingtonSkin', {
    Values = { 'None', '870', 'Tactical', 'Classic' },
    Default = 1,
    Multi = false,
    Text = 'Remington'
})

SkinChangerRight:AddDropdown('SPAS12Skin', {
    Values = { 'None', 'Franchi', 'Tactical', 'Combat' },
    Default = 1,
    Multi = false,
    Text = 'SPAS-12'
})

-- ═══════════════════════════════════════════════════════════
-- MISC TAB
-- ═══════════════════════════════════════════════════════════
local MiscCharacter = Tabs.Misc:AddLeftGroupbox('Character')

MiscCharacter:AddToggle('Noclip', {
    Text = 'Noclip',
    Default = false
}):AddKeyPicker('NoclipKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Noclip Keybind',
    NoUI = false
})

MiscCharacter:AddToggle('NoclipDoors', {
    Text = 'Noclip Doors',
    Default = false
})

MiscCharacter:AddToggle('AntiVisor', {
    Text = 'Anti Visor',
    Default = false
})

MiscCharacter:AddToggle('StopNeckMove', {
    Text = 'Stop Neck Move',
    Default = false
})

MiscCharacter:AddToggle('UnbreakLimbs', {
    Text = 'Unbreak Limbs',
    Default = false
})

MiscCharacter:AddToggle('FakeDowned', {
    Text = 'Fake Downed',
    Default = false
})

MiscCharacter:AddToggle('NoFallDamage', {
    Text = 'No Fall Damage',
    Default = false
})

MiscCharacter:AddToggle('NoSpike', {
    Text = 'No Spike',
    Default = false
})

MiscCharacter:AddToggle('InfiniteStamina', {
    Text = 'Infinite Stamina',
    Default = false
})

MiscCharacter:AddToggle('RagdollSwitch', {
    Text = 'Ragdoll Switch',
    Default = false
}):AddKeyPicker('RagdollSwitchKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Ragdoll Switch Keybind',
    NoUI = false
})

MiscCharacter:AddToggle('SpeedHack', {
    Text = 'Speed Hack',
    Default = false
}):AddKeyPicker('SpeedHackKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Speed Hack Keybind',
    NoUI = false
})

MiscCharacter:AddSlider('Speed', {
    Text = 'Speed',
    Default = 50,
    Min = 0,
    Max = 50,
    Rounding = 0,
    Compact = false
})

MiscCharacter:AddToggle('WalkBackwards', {
    Text = 'Walk Backwards',
    Default = false
})

MiscCharacter:AddToggle('NoJumpDelay', {
    Text = 'No Jump Delay',
    Default = false
})

MiscCharacter:AddToggle('AlwaysSprint', {
    Text = 'Always Sprint',
    Default = false
})

MiscCharacter:AddToggle('AlwaysCrouch', {
    Text = 'Always Crouch',
    Default = false
})

MiscCharacter:AddToggle('BunnyHop', {
    Text = 'Bunny Hop',
    Default = false
}):AddKeyPicker('BunnyHopKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Bunny Hop Keybind',
    NoUI = false
})

MiscCharacter:AddSlider('BhopSpeed', {
    Text = 'Bhop Speed',
    Default = 25,
    Min = 0,
    Max = 75,
    Rounding = 0,
    Compact = false
})

MiscCharacter:AddSlider('Gravity', {
    Text = 'Gravity',
    Default = 196,
    Min = 0,
    Max = 400,
    Rounding = 0,
    Compact = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddToggle('KeyStrokes', {
    Text = 'Key Strokes',
    Default = false
})

MiscCharacter:AddButton({
    Text = 'Call Elevator',
    Func = function()
        print('Calling elevator...')
    end
})

MiscCharacter:AddToggle('WallTP', {
    Text = 'Wall TP',
    Default = false
}):AddKeyPicker('WallTPKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Wall TP Keybind',
    NoUI = false
})

MiscCharacter:AddToggle('HighlightDroppedWeapons', {
    Text = 'Highlight Dropped Weapons',
    Default = false
})

MiscCharacter:AddToggle('HighlightMoney', {
    Text = 'Highlight Money',
    Default = false
})

MiscCharacter:AddToggle('HighlightScraps', {
    Text = 'Highlight Scraps/Crates',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Fly')

MiscCharacter:AddDropdown('FlyMethod', {
    Values = { 'Ragdoll', 'CFrame', 'Velocity' },
    Default = 1,
    Multi = false,
    Text = 'Fly Method'
})

MiscCharacter:AddToggle('EnableFly', {
    Text = 'Enable Fly',
    Default = false
}):AddKeyPicker('FlyKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Fly Keybind',
    NoUI = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Player Tools')

MiscCharacter:AddToggle('PlayerCountHUD', {
    Text = 'Player Count HUD',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Safe ESP')

MiscCharacter:AddToggle('EnableSafeESP', {
    Text = 'Enable Safe ESP',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddToggle('FastAcceleration', {
    Text = 'Fast Acceleration',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('FOV Changer')

MiscCharacter:AddSlider('FOVChangerSlider', {
    Text = 'FOV',
    Default = 70,
    Min = 70,
    Max = 120,
    Rounding = 0,
    Compact = false
})

MiscCharacter:AddToggle('FOVChangerToggle', {
    Text = 'FOV Changer',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Avatar Changer')

MiscCharacter:AddInput('AvatarUserID', {
    Default = '',
    Numeric = false,
    Finished = true,
    Text = 'User ID or Username',
    Placeholder = 'Enter User ID or Username'
})

MiscCharacter:AddButton({
    Text = 'Apply Avatar',
    Func = function()
        print('Applying avatar...')
    end
})

MiscCharacter:AddButton({
    Text = 'Random Avatar',
    Func = function()
        print('Applying random avatar...')
    end
})

MiscCharacter:AddButton({
    Text = 'Reset Avatar',
    Func = function()
        print('Resetting avatar...')
    end
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Fake Accessories')

MiscCharacter:AddDropdown('SelectAccessories', {
    Values = { 'Hat', 'Hair', 'Face', 'Neck', 'Shoulder', 'Front', 'Back', 'Waist' },
    Default = 1,
    Multi = false,
    Text = 'Select Accessories'
})

MiscCharacter:AddButton({
    Text = 'Apply Selected',
    Func = function()
        print('Applying selected accessories...')
    end
})

MiscCharacter:AddButton({
    Text = 'Reset Accessories',
    Func = function()
        print('Resetting accessories...')
    end
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Extras')

MiscCharacter:AddDropdown('TargetPlayer', {
    SpecialType = 'Player',
    Text = 'Target Player'
})

MiscCharacter:AddToggle('FreezePlayer', {
    Text = 'Freeze Player (client)',
    Default = false
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Music Player')

MiscCharacter:AddToggle('EnableMusicPlayer', {
    Text = 'Enable Music Player',
    Default = false
})

MiscCharacter:AddInput('MusicID', {
    Default = '',
    Numeric = true,
    Finished = true,
    Text = 'Music ID',
    Placeholder = 'Enter Music ID'
})

MiscCharacter:AddButton({
    Text = 'Play',
    Func = function()
        print('Playing music...')
    end
})

MiscCharacter:AddButton({
    Text = 'Stop',
    Func = function()
        print('Stopping music...')
    end
})

MiscCharacter:AddButton({
    Text = 'Pause',
    Func = function()
        print('Pausing music...')
    end
})

MiscCharacter:AddButton({
    Text = 'Resume',
    Func = function()
        print('Resuming music...')
    end
})

MiscCharacter:AddDivider()

MiscCharacter:AddLabel('Seek Controls')

MiscCharacter:AddButton({
    Text = 'Rewind 10s',
    Func = function()
        print('Rewinding 10 seconds...')
    end
})

MiscCharacter:AddButton({
    Text = 'Forward 10s',
    Func = function()
        print('Forwarding 10 seconds...')
    end
})

MiscCharacter:AddButton({
    Text = 'Rewind 30s',
    Func = function()
        print('Rewinding 30 seconds...')
    end
})

MiscCharacter:AddButton({
    Text = 'Forward 30s',
    Func = function()
        print('Forwarding 30 seconds...')
    end
})

MiscCharacter:AddDivider()

MiscCharacter:AddToggle('LoopMusic', {
    Text = 'Loop Music',
    Default = false
})

MiscCharacter:AddSlider('MusicVolume', {
    Text = 'Music Volume',
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = false,
    Suffix = '%'
})

MiscCharacter:AddSlider('MusicSpeed', {
    Text = 'Music Speed',
    Default = 100,
    Min = 0,
    Max = 300,
    Rounding = 0,
    Compact = false,
    Suffix = '%'
})

MiscCharacter:AddSlider('Bass', {
    Text = 'Bass',
    Default = 0,
    Min = 0,
    Max = 14,
    Rounding = 0,
    Compact = false,
    Suffix = ' dB'
})

MiscCharacter:AddSlider('Mid', {
    Text = 'Mid',
    Default = 0,
    Min = 0,
    Max = 14,
    Rounding = 0,
    Compact = false,
    Suffix = ' dB'
})

MiscCharacter:AddSlider('Treble', {
    Text = 'Treble',
    Default = 0,
    Min = 0,
    Max = 14,
    Rounding = 0,
    Compact = false,
    Suffix = ' dB'
})

-- Правая сторона - Features
local MiscFeatures = Tabs.Misc:AddRightGroupbox('Features')

MiscFeatures:AddToggle('FastPickup', {
    Text = 'Fast Pickup',
    Default = false
})

MiscFeatures:AddToggle('AutoPickupScraps', {
    Text = 'Auto Pickup Scraps',
    Default = false
})

MiscFeatures:AddToggle('AutoPickupTools', {
    Text = 'Auto Pickup Tools',
    Default = false
})

MiscFeatures:AddToggle('AutoPickupCrates', {
    Text = 'Auto Pickup Crates',
    Default = false
})

MiscFeatures:AddToggle('AutoPickupMoney', {
    Text = 'Auto Pickup Money',
    Default = false
})

MiscFeatures:AddDivider()

MiscFeatures:AddToggle('NoFailLockpick', {
    Text = 'No Fail Lockpick',
    Default = false
})

MiscFeatures:AddToggle('AutoClaimAllowance', {
    Text = 'Auto Claim Allowance',
    Default = false
})

MiscFeatures:AddDivider()

MiscFeatures:AddToggle('HideBody', {
    Text = 'Hide Body',
    Default = false
}):AddKeyPicker('HideBodyKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Hide Body Keybind',
    NoUI = false
})

MiscFeatures:AddToggle('Invisible', {
    Text = 'Invisible',
    Default = false
}):AddKeyPicker('InvisibleKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Invisible Keybind',
    NoUI = false
})

MiscFeatures:AddToggle('AutoInvisibility', {
    Text = 'Auto Invisibily',
    Default = false
})

MiscFeatures:AddSlider('InvisDuration', {
    Text = 'Invis Duration (s)',
    Default = 3,
    Min = 0,
    Max = 120,
    Rounding = 0,
    Compact = false
})

MiscFeatures:AddToggle('HideHead', {
    Text = 'Hide Head',
    Default = false
}):AddKeyPicker('HideHeadKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Hide Head Keybind',
    NoUI = false
})

MiscFeatures:AddDivider()

MiscFeatures:AddToggle('RocketControl', {
    Text = 'Rocket Control',
    Default = false
}):AddKeyPicker('RocketControlKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Rocket Control Keybind',
    NoUI = false
})

MiscFeatures:AddSlider('RocketSpeed', {
    Text = 'Rocket Speed',
    Default = 200,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = false
})

MiscFeatures:AddToggle('C4Control', {
    Text = 'C4 Control',
    Default = false
}):AddKeyPicker('C4ControlKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'C4 Control Keybind',
    NoUI = false
})

MiscFeatures:AddSlider('C4Speed', {
    Text = 'C4 Speed',
    Default = 200,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = false
})

-- Секция Security (правая нижняя секция)
local MiscSecurity = Tabs.Misc:AddRightGroupbox('Security')

MiscSecurity:AddToggle('AntiAFK', {
    Text = 'Anti AFK',
    Default = false
})

MiscSecurity:AddToggle('AdminCheck', {
    Text = 'Admin Check',
    Default = false,
    Risky = true
})

-- Секция Camera (правая колонка)
local MiscCamera = Tabs.Misc:AddRightGroupbox('Camera')

MiscCamera:AddToggle('CameraNoclip', {
    Text = 'Camera Noclip',
    Default = false
})

MiscCamera:AddToggle('CameraDistance', {
    Text = 'Camera Distance',
    Default = false
})

MiscCamera:AddLabel('Distance')

MiscCamera:AddSlider('CameraDistanceSlider', {
    Text = 'Distance',
    Default = 100,
    Min = 0,
    Max = 250,
    Rounding = 0,
    Compact = false
})

MiscCamera:AddDivider()

MiscCamera:AddToggle('FreeCam', {
    Text = 'Free Cam',
    Default = false
}):AddKeyPicker('FreeCamKey', {
    Default = 'None',
    SyncToggleState = false,
    Mode = 'Toggle',
    Text = 'Free Cam Keybind',
    NoUI = false
})

MiscCamera:AddLabel('Free Cam Speed    WASD move, RMB rotate')

MiscCamera:AddSlider('FreeCamSpeed', {
    Text = 'Free Cam Speed',
    Default = 50,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Compact = false
})

MiscCamera:AddDivider()

MiscCamera:AddToggle('MotionBlur', {
    Text = 'Motion Blur',
    Default = false
})

-- Секция Stretch Res (правая колонка)
local MiscStretchRes = Tabs.Misc:AddRightGroupbox('Stretch Res')

MiscStretchRes:AddToggle('EnableStretchRes', {
    Text = 'Enable Stretch Res',
    Default = false
})

MiscStretchRes:AddLabel('Stretch Amount')

MiscStretchRes:AddSlider('StretchAmount', {
    Text = 'Stretch Amount',
    Default = 0.65,
    Min = 0,
    Max = 1.2,
    Rounding = 2,
    Compact = false
})

-- ═══════════════════════════════════════════════════════════
-- SETTINGS TAB
-- ═══════════════════════════════════════════════════════════
local SettingsMenu = Tabs.Settings:AddLeftGroupbox('Menu')

SettingsMenu:AddToggle('ShowKeybinds', {
    Text = 'Show Keybinds',
    Default = true,
    Callback = function(Value)
        Library.KeybindFrame.Visible = Value
    end
})

SettingsMenu:AddButton({
    Text = 'Unload Script',
    Func = function() 
        Library:Unload() 
    end
})

SettingsMenu:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
    Default = 'End',
    NoUI = true,
    Text = 'Menu keybind'
})

-- Intro секция
local SettingsIntro = Tabs.Settings:AddLeftGroupbox('Intro')

SettingsIntro:AddDropdown('AnimationStyle', {
    Values = { 'Bounce', 'Fade', 'Slide', 'None' },
    Default = 1,
    Multi = false,
    Text = 'Animation Style'
})

SettingsIntro:AddButton({
    Text = 'Preview Intro',
    Func = function()
        print('Previewing intro...')
    end
})

SettingsIntro:AddButton({
    Text = 'Save Intro',
    Func = function()
        print('Saving intro...')
    end
})

SettingsIntro:AddDropdown('IntroImage', {
    Values = { 'Leon', 'Nolik', 'Custom', 'None' },
    Default = 1,
    Multi = false,
    Text = 'Intro Image'
})

SettingsIntro:AddButton({
    Text = 'Save Image Intro',
    Func = function()
        print('Saving image intro...')
    end
})

SettingsIntro:AddInput('CustomIntroName', {
    Default = 'Hi guys',
    Numeric = false,
    Finished = true,
    Text = 'Custom Intro Name',
    Placeholder = ''
})

SettingsIntro:AddLabel('Gradient Color 1:'):AddColorPicker('GradientColor1', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Gradient Color 1',
    Transparency = 0
})

SettingsIntro:AddLabel('Gradient Color 2:'):AddColorPicker('GradientColor2', {
    Default = Color3.fromRGB(100, 100, 255),
    Title = 'Gradient Color 2',
    Transparency = 0
})

SettingsIntro:AddButton({
    Text = 'Save Custom Name',
    Func = function()
        print('Saving custom name...')
    end
})

-- Extras секция
local SettingsExtras = Tabs.Settings:AddLeftGroupbox('Extras')

SettingsExtras:AddButton({
    Text = 'Script Stats',
    Func = function()
        print('Showing script stats...')
    end
})

SettingsExtras:AddDropdown('SelectPlayer', {
    SpecialType = 'Player',
    Text = 'Select Player'
})

SettingsExtras:AddButton({
    Text = 'Copy Username',
    Func = function()
        local selectedPlayer = Options.SelectPlayer.Value
        if selectedPlayer and selectedPlayer ~= '' then
            pcall(setclipboard, selectedPlayer)
            print('Copied username:', selectedPlayer)
        end
    end
})

-- Правая колонка - Configuration
local SettingsConfig = Tabs.Settings:AddRightGroupbox('Configuration')

SettingsConfig:AddInput('ConfigName', {
    Default = '',
    Numeric = false,
    Finished = true,
    Text = 'Config name',
    Placeholder = ''
})

SettingsConfig:AddDropdown('ConfigList', {
    Values = { '--' },
    Default = 1,
    Multi = false,
    Text = 'Config list'
})

SettingsConfig:AddButton({
    Text = 'Create config',
    Func = function()
        print('Creating config...')
    end
})

SettingsConfig:AddButton({
    Text = 'Load config',
    Func = function()
        print('Loading config...')
    end
})

SettingsConfig:AddButton({
    Text = 'Overwrite config',
    Func = function()
        print('Overwriting config...')
    end
})

SettingsConfig:AddButton({
    Text = 'Refresh list',
    Func = function()
        print('Refreshing config list...')
    end
})

SettingsConfig:AddButton({
    Text = 'Set as autoload',
    Func = function()
        print('Setting as autoload...')
    end
})

SettingsConfig:AddLabel('Current autoload config: none')

-- Info секция
local SettingsInfo = Tabs.Settings:AddRightGroupbox('Info')

SettingsInfo:AddLabel('nasral.pub')
SettingsInfo:AddLabel('game: Criminality')
SettingsInfo:AddLabel('dev: owned by atlanta')

SettingsInfo:AddToggle('ShowWatermark', {
    Text = 'Show Watermark',
    Default = true,
    Callback = function(Value)
        Library:SetWatermarkVisibility(Value)
    end
})

SettingsInfo:AddButton({
    Text = 'Copy Discord',
    Func = function()
        pcall(setclipboard, 'discord.gg/yourserver')
        print('Discord link copied!')
    end
})

-- Time Cycle HUD секция
local SettingsTimeHUD = Tabs.Settings:AddRightGroupbox('Time Cycle HUD')

SettingsTimeHUD:AddToggle('ShowTimeHUD', {
    Text = 'Show Time HUD',
    Default = false
})

SettingsTimeHUD:AddDropdown('Timezone', {
    Values = { 'Moscow (UTC+3)', 'London (UTC+0)', 'New York (UTC-5)', 'Tokyo (UTC+9)' },
    Default = 1,
    Multi = false,
    Text = 'Timezone'
})

-- ═══════════════════════════════════════════════════════════
-- LIBRARY SETUP
-- ═══════════════════════════════════════════════════════════

Library.ToggleKeybind = Options.MenuKeybind

-- Watermark с FPS и Ping
Library:SetWatermarkVisibility(true)

local FrameTimer = tick()
local FrameCounter = 0
local FPS = 60

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter = FrameCounter + 1

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter
        FrameTimer = tick()
        FrameCounter = 0
    end

    Library:SetWatermark(('nasral.pub .gg/spiral | FPS: %s | Ping: %s'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ))
end)

Library.KeybindFrame.Visible = true

Library:OnUnload(function()
    WatermarkConnection:Disconnect()
    print('Cracked script unloaded!')
    Library.Unloaded = true
end)

-- ═══════════════════════════════════════════════════════════
-- THEME & CONFIG MANAGERS
-- ═══════════════════════════════════════════════════════════

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('Cracked')
SaveManager:SetFolder('Cracked/configs')

SaveManager:BuildConfigSection(Tabs.Settings)
ThemeManager:ApplyToTab(Tabs.Settings)

SaveManager:LoadAutoloadConfig()

print('https://discord.gg/spiral')

-- ═══════════════════════════════════════════════════════════
-- RAGEBOT LOGIC
-- ═══════════════════════════════════════════════════════════

local RB = {
    Enabled = false,
    ShowFov = false,
    FovRadius = 150,
    FovColor = Color3.new(1, 1, 1),
    FireRate = 50,
    CheckDowned = false,
    CheckTeam = false,
    WhiteListEnabled = false,
    TargetListEnabled = false,
    WhiteList = {},
    TargetList = {},
    FovCircle = nil,
    FovUpdateConn = nil,
}

local HSett = { On = false, SoundId = "rbxassetid://5043539486", Vol = 1 }
local HSound = Instance.new("Sound")
HSound.Volume = HSett.Vol
HSound.SoundId = HSett.SoundId
HSound.Parent = workspace

local HitSounds = {
    ["Rust"] = "rbxassetid://5043539486",
    ["Neverlose"] = "rbxassetid://8679627751",
    ["Skeet"] = "rbxassetid://5451260445",
    ["Bubble"] = "rbxassetid://6534947240",
    ["Bell"] = "rbxassetid://160432334",
}

local function UpdHSound()
    HSound.SoundId = HSett.SoundId
    HSound.Volume = HSett.Vol
end

local function PlayHSound()
    if not HSett.On then return end
    pcall(function() HSound:Play() end)
end

local function generate_random_string(length)
    local result = ""
    for i = 1, length do
        result = result .. string.char(math.random(97, 122))
    end
    return result
end

local function find_closest_target()
    if not (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
        return nil
    end
    local target, min_dist = nil, math.huge
    local mouse_pos = UserInputService:GetMouseLocation()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            local root_part = character and character:FindFirstChild("HumanoidRootPart")
            local valid = root_part and humanoid
                and humanoid.Health ~= 0
                and (not RB.CheckDowned or ReplicatedStorage.CharStats[player.Name].Downed.Value == false)
                and not character:FindFirstChildOfClass("ForceField")
            if valid and (not RB.CheckTeam or LocalPlayer.Team ~= player.Team) then
                if RB.WhiteListEnabled and table.find(RB.WhiteList, player.Name) then
                    valid = false
                end
                if RB.TargetListEnabled and #RB.TargetList > 0 and not table.find(RB.TargetList, player.Name) then
                    valid = false
                end
            end
            if valid and (not RB.CheckTeam or LocalPlayer.Team ~= player.Team) then
                local head = character:FindFirstChild("Head")
                if head then
                    local sp, on_screen = Camera:WorldToViewportPoint(head.Position)
                    if on_screen then
                        local dist = (Vector2.new(sp.X, sp.Y) - mouse_pos).Magnitude
                        if dist <= (RB.FovRadius or 150) and dist < min_dist then
                            min_dist = dist
                            target = player
                        end
                    end
                end
            end
        end
    end
    return target
end

local function raycast_function(origin, direction)
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Exclude
    rp.FilterDescendantsInstances = { Camera, LocalPlayer.Character }
    rp.IgnoreWater = true
    return workspace:Raycast(origin, direction, rp)
end

Toggles.RageBotEnabled:OnChanged(function()
    RB.Enabled = Toggles.RageBotEnabled.Value
    local start_shoot_event = ReplicatedStorage.Events.GNX_S
    local finish_shoot_event = ReplicatedStorage.Events.ZFKLF__H

    if not RB.Enabled then
        if RB.FovUpdateConn then
            RB.FovUpdateConn:Disconnect()
            RB.FovUpdateConn = nil
        end
        if RB.FovCircle then
            RB.FovCircle:Remove()
            RB.FovCircle = nil
        end
    else
        if Toggles.ShowFOVCircle.Value then
            if RB.FovCircle then RB.FovCircle:Remove() end
            RB.FovCircle = Drawing.new("Circle")
            RB.FovCircle.Thickness = 1
            RB.FovCircle.Filled = false
            RB.FovCircle.Visible = true
            RB.FovCircle.NumSides = 64
            RB.FovCircle.Radius = Options.FOVRadius.Value or 150
            RB.FovCircle.Color = Options.RageFOVColor.Value or Color3.new(1, 1, 1)
            local mp = UserInputService:GetMouseLocation()
            RB.FovCircle.Position = Vector2.new(mp.X, mp.Y)
        end

        if RB.FovUpdateConn then RB.FovUpdateConn:Disconnect() end
        RB.FovUpdateConn = RunService.RenderStepped:Connect(function()
            if RB.FovCircle then
                local mp = UserInputService:GetMouseLocation()
                RB.FovCircle.Position = Vector2.new(mp.X, mp.Y)
                RB.FovCircle.Radius = Options.FOVRadius.Value or 150
                RB.FovCircle.Color = Options.RageFOVColor.Value or Color3.new(1, 1, 1)
                RB.FovCircle.Visible = Toggles.ShowFOVCircle.Value or false
            end
        end)

        task.spawn(function()
            while RB.Enabled do
                local target_player = find_closest_target()
                if target_player then
                    local target_char = target_player.Character
                    if target_char then
                        local target_head = target_char:FindFirstChild("Head")
                        local target_humanoid = target_char:FindFirstChildOfClass("Humanoid")
                        if target_head and target_humanoid then
                            local local_char = LocalPlayer.Character
                            if local_char then
                                local local_hrp = local_char:FindFirstChild("HumanoidRootPart")
                                local local_tool = local_char:FindFirstChildOfClass("Tool")
                                if local_hrp and local_tool then
                                    local tool_values = local_tool:FindFirstChild("Values")
                                    local hitmarker = local_tool:FindFirstChild("Hitmarker")
                                    if tool_values and hitmarker then
                                        local server_ammo = tool_values:FindFirstChild("SERVER_Ammo")
                                        local stored_ammo = tool_values:FindFirstChild("SERVER_StoredAmmo")
                                        if server_ammo and stored_ammo and server_ammo.Value > 0 then
                                            local priority_parts = {}
                                            for _, name in ipairs({"Head", "UpperTorso", "HumanoidRootPart", "Torso"}) do
                                                local p = target_char:FindFirstChild(name)
                                                if p then table.insert(priority_parts, p) end
                                            end

                                            local offsets = {
                                                Vector3.new(0, 0, 0),
                                                Vector3.new(0, 19, 0),
                                                Vector3.new(5, 19, 0),
                                                Vector3.new(-5, 19, 0),
                                                Vector3.new(0, 19, 5),
                                                Vector3.new(0, 19, -5),
                                                Vector3.new(13.4, 13.4, 0),
                                                Vector3.new(-13.4, 13.4, 0),
                                                Vector3.new(0, 13.4, 13.4),
                                                Vector3.new(0, 13.4, -13.4),
                                                Vector3.new(19, 0, 0),
                                                Vector3.new(-19, 0, 0),
                                                Vector3.new(0, 0, 19),
                                                Vector3.new(0, 0, -19),
                                                Vector3.new(13.4, -13.4, 0),
                                                Vector3.new(-13.4, -13.4, 0),
                                                Vector3.new(0, -13.4, 13.4),
                                                Vector3.new(0, -13.4, -13.4),
                                                Vector3.new(0, -19, 0),
                                                Vector3.new(5, -19, 0),
                                                Vector3.new(-5, -19, 0),
                                                Vector3.new(0, -19, 5),
                                                Vector3.new(0, -19, -5),
                                            }

                                            local hit_found = false
                                            local direction_vector
                                            local random_origin = local_hrp.Position

                                            for _, offset in ipairs(offsets) do
                                                if hit_found then break end
                                                local candidate_origin = local_hrp.Position + offset
                                                for _, part in ipairs(priority_parts) do
                                                    local dir = (part.Position - candidate_origin).Unit * 1000
                                                    local ray_result = raycast_function(candidate_origin, dir)
                                                    if ray_result and (ray_result.Position - part.Position).Magnitude <= 25 then
                                                        random_origin = candidate_origin
                                                        direction_vector = dir
                                                        hit_found = true
                                                        break
                                                    end
                                                end
                                            end

                                            if not hit_found then
                                                random_origin = local_hrp.Position + Vector3.new(math.random(-18, 18), math.random(-18, 18), math.random(-18, 18))
                                                direction_vector = (target_head.Position - random_origin).Unit * 1000
                                            end

                                            if hit_found then
                                                local random_id = generate_random_string(30) .. 0
                                                start_shoot_event:FireServer(tick(), random_id, local_tool, "FDS9I83", random_origin, {direction_vector}, false)

                                                local delay_time = (1 - (Options.FireRate.Value or 50) / 100) * 0.2
                                                task.wait(delay_time)
                                                finish_shoot_event:FireServer("\240\159\167\136", local_tool, random_id, 1, target_head, target_head.Position, direction_vector)
                                                server_ammo.Value = math.max(server_ammo.Value - 1, 0)
                                                hitmarker:Fire(target_head)
                                                PlayHSound()
                                                stored_ammo.Value = tool_values:FindFirstChild("SERVER_StoredAmmo").Value
                                                ReplicatedStorage.Events.GNX_R:FireServer(tick(), "KLWE89U0", local_tool)
                                            else
                                                RunService.RenderStepped:Wait()
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                RunService.RenderStepped:Wait()
            end
        end)
    end
end)

Toggles.ShowFOVCircle:OnChanged(function()
    RB.ShowFov = Toggles.ShowFOVCircle.Value
    if RB.ShowFov then
        if RB.Enabled and not RB.FovCircle then
            RB.FovCircle = Drawing.new("Circle")
            RB.FovCircle.Thickness = 1
            RB.FovCircle.Filled = false
            RB.FovCircle.Visible = true
            RB.FovCircle.NumSides = 64
            RB.FovCircle.Radius = Options.FOVRadius.Value
            RB.FovCircle.Color = Options.RageFOVColor.Value
            local mp = UserInputService:GetMouseLocation()
            RB.FovCircle.Position = Vector2.new(mp.X, mp.Y)
        elseif RB.FovCircle then
            RB.FovCircle.Visible = true
        end
    else
        if RB.FovCircle then RB.FovCircle.Visible = false end
    end
end)

Options.FOVRadius:OnChanged(function()
    RB.FovRadius = Options.FOVRadius.Value
    if RB.FovCircle then RB.FovCircle.Radius = Options.FOVRadius.Value end
end)

Options.RageFOVColor:OnChanged(function()
    RB.FovColor = Options.RageFOVColor.Value
    if RB.FovCircle then RB.FovCircle.Color = Options.RageFOVColor.Value end
end)

Options.FireRate:OnChanged(function()
    RB.FireRate = Options.FireRate.Value
end)

Toggles.CheckDowned:OnChanged(function()
    RB.CheckDowned = Toggles.CheckDowned.Value
end)

Toggles.CheckTeam:OnChanged(function()
    RB.CheckTeam = Toggles.CheckTeam.Value
end)

Toggles.RageWhiteList:OnChanged(function()
    RB.WhiteListEnabled = Toggles.RageWhiteList.Value
end)

Options.RageWhiteListDropdown:OnChanged(function()
    RB.WhiteList = {}
    for name, st in pairs(Options.RageWhiteListDropdown.Value) do
        if st and name ~= "--" then
            table.insert(RB.WhiteList, name)
        end
    end
end)

Toggles.RageTargetList:OnChanged(function()
    RB.TargetListEnabled = Toggles.RageTargetList.Value
end)

Options.RageTargetListDropdown:OnChanged(function()
    RB.TargetList = {}
    for name, st in pairs(Options.RageTargetListDropdown.Value) do
        if st and name ~= "--" then
            table.insert(RB.TargetList, name)
        end
    end
end)

Toggles.EnableHitsounds:OnChanged(function()
    HSett.On = Toggles.EnableHitsounds.Value
end)

Options.SoundType:OnChanged(function()
    HSett.SoundId = HitSounds[Options.SoundType.Value] or HitSounds["Rust"]
    UpdHSound()
end)

Options.Volume:OnChanged(function()
    HSett.Vol = Options.Volume.Value
    UpdHSound()
end)

--[[

	Mod_AddonSkins - Addon skinning and integration for TelUI

	File version v143.143
	(C)2010-2011 Darth Android / Telroth-The Venture Co.
	
]]
if not TelUI then return end
local _, ns = ...
local TelUI, C, OOP, S, L, T = unpack(TelUI)
local Mod_AddonSkins = OOP:CreateClass("Mod_AddonSkins")

ns[1] = Mod_AddonSkins
ns[2] = C
ns[3] = S
ns[4] = L

function Mod_AddonSkins.__construct()
	local self = super()
	for name,func in pairs(Mod_AddonSkins:GetSkins()) do
		if TelUI.config.addonskins[name] ~= false then
			TelUI.safecall(func,Skin, TelUI.loadedSkin, Layout, TelUI.loadedLayout, TelUI.config.skin)
		end
	end
	return self
end

function Mod_AddonSkins:RegisterSkin(name, initFunc)
	self = Mod_AddonSkins -- Static function
	if type(initFunc) ~= "function" then error("initFunc must be a function!",2) end
	self.skins[name] = initFunc
	--
end

function Mod_AddonSkins:GetSkins()
	return Mod_AddonSkins.skins
end

function Mod_AddonSkins:LoadSkin(name)
	if Mod_AddonSkins.loadedSkins[name] ~= nil then return Mod_AddonSkins.loadedSkins[name] end
	
end

Mod_AddonSkins.skins = {}
Mod_AddonSkins.loadedSkins = {}
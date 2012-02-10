if IsAddOnLoaded("Tukui") then return end -- TukUI already has this skinned


Mod_AddonSkins:RegisterSkin("Blizzard_StaticPopups",function(Skin,skin,Layout,layout,config)

	function Skin:SkinStaticPopup(popup)
		self:SkinBackgroundFrame(popup)
		self:SkinUIButton(popup.button1)
		self:SkinUIButton(popup.button2)
		self:SkinUIButton(popup.button3)
		self:SkinFrame(popup.extraFrame)
	end
	
	skin:SkinStaticPopup(StaticPopup1)
	skin:SkinStaticPopup(StaticPopup2)
	skin:SkinStaticPopup(StaticPopup3)
	skin:SkinStaticPopup(StaticPopup4)
	
end)
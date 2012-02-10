--[[
    MultiCastActionBar Skin
	
	(C)2010-2011 Darth Android / Telroth - The Venture Co.

]]

if not Mod_AddonSkins or select(2,UnitClass("player")) ~= "SHAMAN" then return end

-- Courtesy Blizzard Inc.
-- I wouldn't have to copy these if they'd just make them not local >.>
SLOT_EMPTY_TCOORDS = {
	[EARTH_TOTEM_SLOT] = {
		left	= 66 / 128,
		right	= 96 / 128,
		top		= 3 / 256,
		bottom	= 33 / 256,
	},
	[FIRE_TOTEM_SLOT] = {
		left	= 67 / 128,
		right	= 97 / 128,
		top		= 100 / 256,
		bottom	= 130 / 256,
	},
	[WATER_TOTEM_SLOT] = {
		left	= 39 / 128,
		right	= 69 / 128,
		top		= 209 / 256,
		bottom	= 239 / 256,
	},
	[AIR_TOTEM_SLOT] = {
		left	= 66 / 128,
		right	= 96 / 128,
		top		= 36 / 256,
		bottom	= 66 / 256,
	},
}

function quickTest()
	MultiCastActionBarFrame:ClearAllPoints()
	MultiCastActionBarFrame:SetPoint("CENTER",UIParent,"CENTER")
end

Mod_AddonSkins:RegisterSkin("Blizzard_TotemBar",function(Skin,skin,Layout,layout,config)
	-- Skin Flyout
	function Skin:SkinMCABFlyoutFrame(flyout)
		flyout.top:SetTexture(nil)
		flyout.middle:SetTexture(nil)
		self:SkinFrame(flyout)
		flyout:SetBackdropBorderColor(0,0,0,0)
		flyout:SetBackdropColor(0,0,0,0)
		-- Skin buttons
		local last = nil
		for _,button in ipairs(flyout.buttons) do
			self:SkinActionButton(button)
			if not InCombatLockdown() then
				button:SetSize(config.buttonSize,config.buttonSize)
				button:ClearAllPoints()
				button:SetPoint("BOTTOM",last,"TOP",0,config.borderWidth)
			end			
			if button:IsVisible() then last = button end
			button:SetBackdropBorderColor(flyout.parent:GetBackdropBorderColor())
		end
		flyout.buttons[1]:SetPoint("BOTTOM",flyout,"BOTTOM")
		if flyout.type == "slot" then
			local tcoords = SLOT_EMPTY_TCOORDS[flyout.parent:GetID()]
			flyout.buttons[1].icon:SetTexCoord(tcoords.left,tcoords.right,tcoords.top,tcoords.bottom)
		end
		-- Skin Close button
		local close = MultiCastFlyoutFrameCloseButton
		self:SkinButton(close)
		
		close:GetHighlightTexture():SetTexture([[Interface\Buttons\ButtonHilight-Square]])
	    close:GetHighlightTexture():SetPoint("TOPLEFT",close,"TOPLEFT",config.borderWidth,-config.borderWidth)
	    close:GetHighlightTexture():SetPoint("BOTTOMRIGHT",close,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
	    close:GetNormalTexture():SetTexture(nil)
		close:ClearAllPoints()
		close:SetPoint("BOTTOMLEFT",last,"TOPLEFT",0,config.buttonSpacing)
		close:SetPoint("BOTTOMRIGHT",last,"TOPRIGHT",0,config.buttonSpacing)
		close:SetHeight(config.buttonSpacing*2)
		
		flyout:ClearAllPoints()
		flyout:SetPoint("BOTTOM",flyout.parent,"TOP",0,config.buttonSpacing)
	end
	hooksecurefunc("MultiCastFlyoutFrame_ToggleFlyout",function(self) skin:SkinMCABFlyoutFrame(self) end)
	
	function Skin:SkinMCABFlyoutOpenButton(button, parent)
		button:GetHighlightTexture():SetTexture(nil)
	    button:GetNormalTexture():SetTexture(nil)
		button:SetHeight(config.buttonSpacing*3)
		button:ClearAllPoints()
		button:SetPoint("BOTTOMLEFT", parent, "TOPLEFT")
		button:SetPoint("BOTTOMRIGHT", parent, "TOPRIGHT")
		button:SetBackdropColor(0,0,0,0)
		button:SetBackdropBorderColor(0,0,0,0)
		if not button.visibleBut then
			button.visibleBut = CreateFrame("Frame",nil,button)
			button.visibleBut:SetHeight(config.buttonSpacing*2)
			button.visibleBut:SetPoint("TOPLEFT")
			button.visibleBut:SetPoint("TOPRIGHT")
			button.visibleBut.highlight = button.visibleBut:CreateTexture(nil,"HIGHLIGHT")
			button.visibleBut.highlight:SetTexture([[Interface\Buttons\ButtonHilight-Square]])
			button.visibleBut.highlight:SetPoint("TOPLEFT",button.visibleBut,"TOPLEFT",config.borderWidth,-config.borderWidth)
			button.visibleBut.highlight:SetPoint("BOTTOMRIGHT",button.visibleBut,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
			self:SkinFrame(button.visibleBut)
		end
	end
	hooksecurefunc("MultiCastFlyoutFrameOpenButton_Show",function(button,_, parent) skin:SkinMCABFlyoutOpenButton(button, parent) end)
	
	local bordercolors = {
		{.23,.45,.13},    -- Earth
		{.58,.23,.10},    -- Fire
		{.19,.48,.60},   -- Water
		{.42,.18,.74},   -- Air
		{.39,.39,.12}    -- Summon / Recall
	}
	
	function Skin:SkinMCABSlotButton(button, index)
		self:SkinActionButton(button)
		if _G[button:GetName().."Panel"] then _G[button:GetName().."Panel"]:Hide() end
		button.overlayTex:SetTexture(nil)
		button.background:SetDrawLayer("ARTWORK")
		button.background:ClearAllPoints()
		button.background:SetPoint("TOPLEFT",button,"TOPLEFT",config.borderWidth,-config.borderWidth)
		button.background:SetPoint("BOTTOMRIGHT",button,"BOTTOMRIGHT",-config.borderWidth,config.borderWidth)
		button:SetSize(config.buttonSize, config.buttonSize)
		button:SetBackdropBorderColor(unpack(bordercolors[((index-1) % 4) + 1]))
	end
	hooksecurefunc("MultiCastSlotButton_Update",function(self, slot) skin:SkinMCABSlotButton(self,tonumber( string.match(self:GetName(),"MultiCastSlotButton(%d)"))) end)
	
	-- Skin the actual totem buttons
	function Skin:SkinMCABActionButton(button, index)
		button.overlayTex:SetTexture(nil)
		button.overlayTex:Hide()
		button:GetNormalTexture():SetTexture(nil)
		if _G[button:GetName().."Panel"] then _G[button:GetName().."Panel"]:Hide() end
		if not InCombatLockdown() and button.slotButton then
			button:ClearAllPoints()
			button:SetAllPoints(button.slotButton)
			button:SetFrameLevel(button.slotButton:GetFrameLevel()+1)
		end
		button:SetBackdropBorderColor(unpack(bordercolors[((index-1) % 4) + 1]))
		button:SetBackdropColor(0,0,0,0)
	end
	hooksecurefunc("MultiCastActionButton_Update",function(actionButton, actionId, actionIndex, slot) skin:SkinMCABActionButton(actionButton,actionIndex) end)
	
	-- Skin the summon and recall buttons
	function Skin:SkinMCABSpellButton(button, index)
		if not button then return end
		self:SkinActionButton(button)
		button:GetNormalTexture():SetTexture(nil)
		self:SkinBackgroundFrame(button)
		button:SetBackdropBorderColor(unpack(bordercolors[((index-1)%5)+1]))
		if not InCombatLockdown() then button:SetSize(config.buttonSize, config.buttonSize) end
		_G[button:GetName().."Highlight"]:SetTexture(nil)
		_G[button:GetName().."NormalTexture"]:SetTexture(nil)
	end
	hooksecurefunc("MultiCastSummonSpellButton_Update", function(self) skin:SkinMCABSpellButton(self,0) end)
	hooksecurefunc("MultiCastRecallSpellButton_Update", function(self) skin:SkinMCABSpellButton(self,5) end)
	
	
	
	
	local frame = MultiCastActionBarFrame
end)
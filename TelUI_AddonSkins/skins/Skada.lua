--[[
    Skada skin for TukUI by Darth Android / Telroth - The Venture Co.
    Skins all Skada windows to fit TukUI
    All overridden options are removed from Skada's config to reduce confusion
    
    Window height is moved to the Bars config pane - it works a bit differently now.
    If set to 0, window auto-sizes to the number of bars as before, with a minimum of 1 bar.
    If set to 1, then it sizes to accomodate the number of bars defined by the "Max bars" setting
    
    TODO:
     + Add Integration options
	 
	Available LAYOUT methods:
	
	:PositionSkadaWindow(window) - Repositions the skada window "window" on screen.

	(C)2010-2011 Darth Android / Telroth - The Venture Co.
	File version v143.143
]]
if not Mod_AddonSkins or not Skada then return end
local Skada = Skada

Mod_AddonSkins:RegisterSkin("Skada",function(Skin,skin,Layout,layout,config)
	Layout.PositionSkadaWindow = dummy
	-- Used to strip unecessary options from the in-game config
	local function StripOptions(options)
		options.baroptions.args.bartexture = nil
		options.baroptions.args.barspacing = nil
		options.titleoptions.args.texture = nil
		options.titleoptions.args.bordertexture = nil
		options.titleoptions.args.thickness = nil
		options.titleoptions.args.margin = nil
		options.titleoptions.args.color = nil
		options.windowoptions = nil
    --if not TukuiDB.skins.Skada.nofont or TukuiDB.skins.Skada.nofont ~= true then
        options.baroptions.args.barfont = nil
        options.titleoptions.args.font = nil
    --end
	end
	-- Hook the bar mod
	local barmod = Skada.displays["bar"]
	-- Strip options
	barmod.AddDisplayOptions_ = barmod.AddDisplayOptions
    barmod.AddDisplayOptions = function(self, win, options)
        self:AddDisplayOptions_(win, options)
        StripOptions(options)
	end
	for k, options in pairs(Skada.options.args.windows.args) do
        if options.type == "group" then
            StripOptions(options.args)
        end
    end
	-- Override settings from in-game GUI
	local titleBG = {
		bgFile = config.barTexture,
		tile = false,
		tileSize = 0
	}
	barmod.ApplySettings_ = barmod.ApplySettings
	barmod.ApplySettings = function(self, win)
        win.db.enablebackground = true
        win.db.background.borderthickness = config.borderWidth
		barmod:ApplySettings_(win)
		layout:PositionSkadaWindow(win)
        if win.db.enabletitle then
            win.bargroup.button:SetBackdrop(titleBG)
        end
        win.bargroup:SetTexture(config.barTexture)
        win.bargroup:SetSpacing(config.barSpacing)
		win.bargroup:SetFont(config.font,config.fontSize, config.fontFlags)
		local titlefont = CreateFont("TitleFont"..win.db.name)
		titlefont:SetFont(config.font,config.fontSize, config.fontFlags)
		win.bargroup.button:SetNormalFontObject(titlefont)
        local color = win.db.title.color
	    win.bargroup.button:SetBackdropColor(color.r, color.g, color.b, color.a or 1)
		skin:SkinBackgroundFrame(win.bargroup)
        --win.bargroup:SetMaxBars(win.db.barmax)
        win.bargroup:SortBars()
	end
	-- Update pre-existing displays
	for k, window in ipairs(Skada:GetWindows()) do
		window:UpdateDisplay()
	end
end)


	
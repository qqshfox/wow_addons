-- Custom Skin handlers (In this situation, this must be declared before the skin table. If loaded after, it would not have a chance to load and an error would be thrown.)
local function formatDetails(window, guild, level, race, class)
    if(guild ~= "") then
	guild = "<"..guild.."> ";
    end
    return "|cffffffff"..guild..level.." "..race.." "..class.."|r";
end

local addonpath="Interface\\AddOns\\WIMukui\\";

--Default window skin
local WIM_TukuiSkin = {
    title = "WIMukui",
    version = "1.0.3",
    author = "Midnitte (modified from Stewart A <Emerald Dream EU>)",
    website = "http://www.wimaddon.com",
    message_window = {
        texture = addonpath.."message_window",
        min_width = 256,
        min_height = 128,
        backdrop = {
            top_left = {
                width = 64,
                height = 110,
                offset = {0, 0},
                texture_coord = {0, 0, 0, .43, .25, 0, .25, .43}
            },
            top_right = {
                width = 64,
                height = 110,
                offset = {0, 0},
                texture_coord = {.75, 0, .75, .43, 1, 0, 1, .43}
            },
            bottom_left = {
                width = 64,
                height = 64,
                offset = {0, 0},
                texture_coord = {0, .75, 0, 1, .25, .75, .25, 1}
            },
            bottom_right = {
                width = 64,
                height = 64,
                offset = {0, 0},
                texture_coord = {.75, .75, .75, 1, 1, .75, 1, 1}
            },
            top = {
                tile = false,
                texture_coord = {.25, 0, .25, .43, .75, 0, .75, .43}
            },
            bottom = {
                tile = false,
                texture_coord = {.25, .75, .25, 1, .75, .75, .75, 1}
            },
            left = {
                tile = false,
                texture_coord = {0, .43, 0, .75, .25, .43, .25, .75}
            },
            right = {
                tile = false,
                texture_coord = {.75, .43, .75, .75, 1, .43, 1, .75}
            },
            background = {
                tile = false,
                texture_coord = {.25, .43, .25, .75, .75, .43, .75, .75}
            }
        },
      widgets = {
              class_icon = {
                texture = addonpath.."class_icons",
                width = 50,
                height = 50,
                points = {
                    {"TOPLEFT", "window", "TOPLEFT", 275, -22}
                },
                is_round = false,
	            blank = {.5, .5, .5, .75, .75, .5, .75, .75},
	            druid = {0, 0, 0, .25, .25, 0, .25, .25},
	            hunter = {.25, 0, .25, .25, .5, 0, .5, .25},
	            mage = {.5, 0, .5, .25, .75, 0, .75, .25},
	            paladin = {.75, 0, .75, .25, 1, 0, 1, .25},
	            priest = {0, .25, 0, .5, .25, .25, .25, .5},
	            rogue = {.25, .25, .25, .5, .5, .25, .5, .5},
	            shaman = {.5, .25, .5, .5, .75, .25, .75, .5},
	            warlock = {.75, .25, .75, .5, 1, .25, 1, .5},
	            warrior = {0, .5, 0, .75, .25, .5, .25, .75},
	            deathknight = {.75, .5, .75, .75, 1, .5, 1, .75},
	            gm = {.25, .5, .25, .75, .5, .5, .5, .75} 
            }, 
            from = {
                points = {
                    {"TOPLEFT", "window", "TOPLEFT", 8, -6}
                },
                font = "GameFontNormalLarge",
                font_color = "ffffff",
                font_height = 16,
                font_flags = "",
                use_class_color = true
            },
            char_info = {
                format = formatDetails,
                points = {
                   -- {"TOPLEFT", "window", "TOPLEFT", 58, -28}
				   {"TOPLEFT", "window", "TOPLEFT", 12, -28}
                },
                font = "GameFontNormal",
                font_color = "ffffff"
            },
            close = {
                state_hide = {
                    NormalTexture = addonpath.."minimisebutton",
                    PushedTexture = addonpath.."minimisebutton",
                    HighlightTexture = addonpath.."minimisebutton",
                    HighlightAlphaMode = "ADD"
                },
                state_close = {
                    NormalTexture = addonpath.."closebutton",
                    PushedTexture = addonpath.."closebutton",
                    HighlightTexture = addonpath.."closebutton",
                    HighlightAlphaMode = "ADD"
                },
                width = 20,
                height = 20,
                points = {
                    {"TOPRIGHT", "window", "TOPRIGHT", 0, 0}
                }
            },
			history = {
                NormalTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
                PushedTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
                HighlightTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
                HighlightAlphaMode = "ADD",
                width = 19,
                height = 19,
                points = {
                    {"TOPRIGHT", "window", "TOPRIGHT", -20, -2}
                }
            },
            w2w = {
                NormalTexture = addonpath.."w2w",
                PushedTexture = addonpath.."w2w",
                HighlightTexture = addonpath.."w2w",
                HighlightAlphaMode = "ADD",
                points = {
                    {"TOPLEFT", "class_icon", 10, -10},
                    {"BOTTOMRIGHT", "class_icon", -5, 5}
                }
            },
            chatting = {
                NormalTexture = "Interface\\GossipFrame\\PetitionGossipIcon",
                PushedTexture = "Interface\\GossipFrame\\PetitionGossipIcon",
                width = 16,
                height = 16,
                points = {
                    {"TOPRIGHT", "window", -38, -3}
                }
            },
            scroll_up = {
                NormalTexture = addonpath.."scrollup",
                PushedTexture = addonpath.."scrollup",
                HighlightTexture = addonpath.."scrollup",
                DisabledTexture = addonpath.."scrollupdisabled",
                HighlightAlphaMode = "ADD",
                width = 16,
                height = 16,
                points = {
                    {"TOPRIGHT", "window", "TOPRIGHT", -12, -80}
                }
            },
            scroll_down = {
                NormalTexture = addonpath.."scrolldown",
                PushedTexture = addonpath.."scrolldown",
                HighlightTexture = addonpath.."scrolldown",
                DisabledTexture = addonpath.."scrolldowndisabled",
                HighlightAlphaMode = "ADD",
                width = 15,
                height = 14,
                points = {
                    {"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -12, 35}
                }
            },
            chat_display = {
                points = {
                    {"TOPLEFT", "window", "TOPLEFT", 14, -81},
                    {"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -38, 39}
                },
                font = "ChatFontNormal"
            },
            msg_box = {
                font = "ChatFontNormal",
                font_height = 14,
                font_color = {1,1,1},
                points = {
                    {"TOPLEFT", "window", "BOTTOMLEFT", 15, 26},
                    {"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -12, 8}
                },
            },
            resize = {
                NormalTexture = "Interface\\AddOns\\"..WIM.addonTocName.."\\Skins\\Default\\resize",
                width = 25,
                height = 25,
                points = {
                    {"BOTTOMRIGHT", "window", "BOTTOMRIGHT", 5, -5}
                }
            },
            shortcuts = {
                stack = "RIGHT",
                spacing = 2,
                points = {
                    {"TOPLEFT", "window", "TOPLEFT", 12, -46},
                    {"BOTTOMRIGHT", "window", "TOPLEFT", 200, -66}
                },
                buttons = {
                    NormalTexture = "Interface\\AddOns\\"..WIM.addonTocName.."\\Skins\\Default\\shortcuts_frame",
                    PushedTexture = "Interface\\Buttons\\UI-Quickslot-Depress",
                    HighlightTexture = "Interface\\Buttons\\ButtonHilight-Square",
                    HighlightAlphaMode = "ADD",
                    icons = {
                        location = "Interface\\Icons\\Ability_TownWatch",
                        invite = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
                        friend = "Interface\\Icons\\INV_Misc_GroupNeedMore",
                        ignore = "Interface\\Icons\\Ability_Physical_Taunt",
                    }
                }
            }
        },
    },
    tab_strip = {
        textures = {
            tab = {
                NormalTexture = addonpath.."tab_normal",
                PushedTexture = addonpath.."tab_selected",
                HighlightTexture = addonpath.."",
                HighlightAlphaMode = "ADD"
            },
            prev = {
                NormalTexture = addonpath.."leftarrow",
                PushedTexture = addonpath.."leftarrow_pushed",
                DisabledTexture = "",
                HighlightTexture = "",
                HighlightAlphaMode = "ADD",
                height = 16,
                width = 16,
            },
            next = {
                NormalTexture = addonpath.."rightarrow",
                PushedTexture = addonpath.."rightarrow_pushed",
                DisabledTexture = "",
                HighlightTexture = "",
                HighlightAlphaMode = "ADD",
                height = 16,
                width = 16,
            },
        },
        height = 26,
        points = {
            {"BOTTOMLEFT", "window", "TOPLEFT", 38, 0},
            {"BOTTOMRIGHT", "window", "TOPRIGHT", -20, 0}
        },
        text = {
            font = "ChatFontNormal",
            font_color = {1, 1, 1},
            font_height = 12,
            font_flags = ""
        },
        vertical = false,
    },
};


----------------------------------------------------------
--                  Register Skin                       --
----------------------------------------------------------

WIM.RegisterSkin(WIM_TukuiSkin);

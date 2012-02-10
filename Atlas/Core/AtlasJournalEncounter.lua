-- $Id: AtlasJournalEncounter.lua 1551 2011-11-23 14:26:58Z arithmandar $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005-2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 - Arith Hsu, Atlas Team <atlas.addon@gmail.com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

-- Atlas JournalEncounter Integration

local AL = LibStub("AceLocale-3.0"):GetLocale("Atlas");
local BB = Atlas_GetLocaleLibBabble("LibBabble-Boss-3.0");

function Atlas_JournalEncounter_InstanceButton_OnClick(frame)
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];

	if ( EJ_GetInstanceInfo(base.JournalInstanceID) == nil ) then
		return;
	end

	if not EncounterJournal or not EncounterJournal:IsShown() then
		ToggleEncounterJournal();
	end
	EncounterJournal_ListInstances();
	EncounterJournal_DisplayInstance(base.JournalInstanceID);

	if ( not EncounterJournal:IsShown() ) then
		EncounterJournal:Show();
	else
		EncounterJournal:Hide();
		EncounterJournal:Show();
	end

end

function Atlas_JournalEncounter_InstanceButton_OnEnter(frame)
	local zoneID = ATLAS_DROPDOWNS[AtlasOptions.AtlasType][AtlasOptions.AtlasZone];
	local data = AtlasMaps;
	local base = data[zoneID];

	if ( MouseIsOver(frame) ) then
		if ( EJ_GetInstanceInfo(base.JournalInstanceID) ) then
			EJ_SelectInstance(base.JournalInstanceID);
	
			local name, description = EJ_GetInstanceInfo();
	
			GameTooltip:SetOwner(frame, "ANCHOR_RIGHT");
			GameTooltip:SetText(name);
			GameTooltipTextLeft1:SetTextColor(1, 1, 1);
			GameTooltip:AddLine(description, nil, nil, nil, true);
			GameTooltip:AddLine(AL["Click to open Dungeon Journal window."], 0.5, 0.5, 1, true);
			GameTooltip:Show();
		end
	else
		GameTooltip:Hide();
	end
end

function Atlas_GetBossName(bossname, encounterID)
	if ( encounterID and EJ_GetEncounterInfo(encounterID) ) then
		bossname = EJ_GetEncounterInfo(encounterID);
	elseif ( bossname and BB[bossname] ) then
		bossname = BB[bossname];
	elseif ( bossname and AL[bossname] ) then
		bossname = AL[bossname];
	else
		--bossname = bossname;
	end

	return bossname;
end

-- $Id: AtlasMaps_NPC_DB.lua 1512 2011-10-19 15:43:07Z arithmandar $
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

-- Atlas Map NPC Description Data
-- Maintainers: Arith, Dynaletik, Deadca7


AtlasMaps_NPC_DB = {
--[[
Syntax: 
	MapName = {
		{ "number", "EJ_BossID", "X coordinate", "Y coordinate" };
		{ "2", "193", "339", "435" };
	};
]]

--************************************************
-- Eastern Kingdoms Instances (Classic)
--************************************************

	ShadowfangKeep = {
		{ "1", "96", "363", "408" }; -- Baron Ashbury
		{ "2", "97", "54", "339" }; -- Baron Silverlaine
		{ "3", "98", "171", "353" }; -- Commander Springvale
		{ "4", "99", "290", "173" }; -- Lord Walden
		{ "5", "100", "207", "51" }; -- Lord Godfrey
	};
	TheDeadmines = {
		{ "1", "89", "113", "287" }; -- Glubtok
		{ "2", "90", "178", "399" }; -- Helix Gearbreaker
		{ "3", "91", "228", "300" }; -- Foe Reaper 5000 
		{ "4", "92", "397", "178" }; -- Admiral Ripsnarl
		{ "4'", "93", "400", "190" }; -- "Captain" Cookie
		{ "4''", "95", "416", "178" }; -- Vanessa VanCleef
	};

--************************************************
-- Cataclysm Instances
--************************************************
	BaradinHold = {
		{ "1", "139", "425", "320" }; -- Argaloth
		{ "2", "140", "72", "319" }; -- Occu'thar
		{ "3", "339", "249", "139" }; -- Alizabal, Mistress of Hate
	};
	BlackrockCaverns = {
		{ "1", "105", "166", "311" }; -- Rom'ogg Bonecrusher
		{ "2", "106", "143", "102" }; -- Corla, Herald of Twilight
		{ "3", "107", "281", "301" }; -- Karsh Steelbender
		{ "4", "108", "363", "381" }; -- Beauty
		{ "5", "109", "377", "236" }; -- Ascendant Lord Obsidius
	};
	BlackwingDescent = {
		{ "1", "170", "132", "370" }; -- Magmaw
		{ "2", "169", "311", "372" }; -- Omnotron Defense System
		{ "3", "172", "77", "246" }; -- Chimaeron
		{ "4", "173", "364", "247" }; -- Maloriak
		{ "5", "171", "224", "109" }; -- Atramedes
		{ "6", "174", "223", "246" }; -- Nefarian's End
	};
	CoTDragonSoulA = {
		{ "1", "311", "250", "301" }; -- Morchok
		{ "5", "331", "248", "252" }; -- Ultraxion
	};
	CoTDragonSoulB = {
		{ "2", "324", "135", "132" }; -- Warlord Zon'ozz
		{ "3", "325", "302", "370" }; -- Yor'sahj the Unsleeping
		{ "4", "317", "393", "130" }; -- Hagara the Stormbinder
	};
	CoTDragonSoulC = {
		{ "6", "332", "101", "86"}; -- Warmaster Blackhorn
		{ "7", "318", "69", "345"}; -- Spine of Deathwing
		{ "8", "333", "333", "318"}; -- Madness of Deathwing	
	};
	CoTEndTime = {
		{ "1", "340", "94", "143"}; -- Echo of Baine
		{ "2", "285", "294", "409"}; -- Echo of Jaina
		{ "3", "323", "218", "259"}; -- Echo of Sylvanas
		{ "4", "283", "380", "467"}; -- Echo of Tyrande
		{ "5", "289", "475", "183"}; -- Murozond
	};
	CoTHourOfTwilight = {
		{ "1", "322", "340", "101" }; -- Arcurion
		{ "2", "342", "187", "231" }; -- Asira Dawnslayer
		{ "3", "341", "270", "435" }; -- Archbishop Benedictus
	};
	CoTWellOfEternity = {
		{ "1", "290", "138", "311" }; -- Peroth'arn
		{ "2", "291", "241", "278" }; -- Queen Azshara
		{ "3", "292", "424", "314" }; -- Mannoroth and Varo'then
	};
	Firelands = {
		{ "1", "192", "140", "320" }; -- Beth'tilac
		{ "2", "193", "336", "438" }; -- Lord Rhyolith
		{ "3", "194", "339", "330" }; -- Alysrazor
		{ "4", "195", "263", "353" }; -- Shannox
		{ "5", "196", "264", "308" }; -- Baleroc, the Gatekeeper
		{ "6", "197", "265", "190" }; -- Majordomo Staghelm
		{ "7", "198", "264", "56" }; -- Ragnaros
	};
	GrimBatol = {
		{ "1", "131", "176", "320" }; -- General Umbriss
		{ "2", "132", "238", "181" }; -- Forgemaster Throngus
		{ "3", "133", "336", "135" }; -- Drahga Shadowburner
		{ "4", "134", "429", "343" }; -- Erudax, the Duke of Below
	};
	HallsOfOrigination = {
		{ "1", "124", "85", "290" }; -- Temple Guardian Anhuur
		{ "2", "125", "348", "230" }; -- Earthrager Ptah
		{ "3", "126", "72", "93" }; -- Anraphet
		{ "4", "127", "170", "382" }; -- Isiset, Construct of Magic
		{ "5", "128", "245", "454" }; -- Ammunae, Construct of Life
		{ "6", "129", "319", "382" }; -- Setesh, Construct of Destruction
		{ "7", "130", "242", "306" }; -- Rajh, Construct of Sun
	};
	LostCityOfTolvir = {
		{ "1", "117", "234", "219" }; -- General Husam
		{ "2", "118", "379", "313" }; -- Lockmaw
		{ "3", "119", "183", "286" }; -- High Prophet Barim
		{ "4", "122", "248", "253" }; -- Siamat
	};
	TheBastionOfTwilight = {
		{ "1", "156", "154", "103" }; -- Halfus Wyrmbreaker
		{ "2", "157", "155", "280" }; -- Theralion and Valiona
		{ "3", "158", "112", "395" }; -- Ascendant Council
		{ "4", "167", "222", "458" }; -- Cho'gall
		{ "5", "168", "393", "302" }; -- Sinestra
	};
	TheStonecore = {
		{ "1", "110", "336", "289" }; -- Corborus
		{ "2", "111", "128", "219" }; -- Slabhide
		{ "3", "112", "221", "108" }; -- Ozruk
		{ "4", "113", "282", "197" }; -- High Priestess Azil
	};
	TheVortexPinnacle = {
		{ "1", "114", "341", "216" }; -- Grand Vizier Ertan
		{ "2", "115", "312", "455" }; -- Altairus
		{ "3", "116", "100", "171" }; -- Asaad, Caliph of Zephyrs
	};
	ThroneOfTheFourWinds = {
		{ "1", "154", "134", "250" }; -- The Conclave of Wind
		{ "1", "154", "249", "137" }; -- The Conclave of Wind
		{ "1", "154", "364", "251" }; -- The Conclave of Wind
		{ "2", "155", "248", "250" }; -- Al'Akir
	};
	ThroneOfTheTides = {
		{ "1", "101", "249", "45" }; -- Lady Naz'jar
		{ "2", "102", "248", "119" }; -- Commander Ulthok, the Festering Prince
		{ "3", "103", "339", "253" }; -- Mindbender Ghur'sha
		{ "4", "104", "158", "254" }; -- Ozumat
	};
	ZulAman = {
		{ "1", "186", "117", "145" }; -- Akil'zon
		{ "2", "187", "147", "364" }; -- Nalorakk
		{ "3", "188", "240", "343" }; -- Jan'alai
		{ "4", "189", "254", "143" }; -- Halazzi
		{ "5", "190", "328", "268" }; -- Hex Lord Malacrass
		{ "6", "191", "452", "268" }; -- Daakara
	};	
	ZulGurub = {
		{ "5", "175", "323", "293" }; -- High Priest Venoxis
		{ "9", "176", "414", "445" }; -- Bloodlord Mandokir
		{ "15", "181", "288", "72" }; -- High Priestess Kilnara
		{ "16", "184", "141", "103" }; -- Zanzil
		{ "17", "185", "306", "194" }; -- Jin'do the Godbreaker
	};
};

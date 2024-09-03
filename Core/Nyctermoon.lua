local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";
local WHITE = "|cffFFFFFF";

function AtlasLoot_NyctermoonMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Nyctermoon Custom Items
	AtlasLootMenuItem_2_Name:SetText("Nyctermoon Custom Items");
	AtlasLootMenuItem_2_Extra:SetText("|cffFF8400Obtained from World Quests or Donation");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\inv_misc_enggizmos_19");
	AtlasLootMenuItem_2.lootpage="Nycter_Custom1";
	AtlasLootMenuItem_2:Show();
	--Companion Licenses
	AtlasLootMenuItem_3_Name:SetText("Companion Licenses");
	AtlasLootMenuItem_3_Extra:SetText("|cffFF8400Quest Lines from Capital City Inns");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_LICENSE_T5R");
	AtlasLootMenuItem_3.lootpage="Nycter_Licenses1";
	AtlasLootMenuItem_3:Show();
	--Faction Rewards
	AtlasLootMenuItem_4_Name:SetText("Reputation Rewards");
	AtlasLootMenuItem_4_Extra:SetText("|cffFF8400Recipes and Items from Exalted Reputation");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\inv_brd_banner");
	AtlasLootMenuItem_4.lootpage="Nycter_FactionRewards1";
	AtlasLootMenuItem_4:Show();
	--Loot Pets
	AtlasLootMenuItem_5_Name:SetText(AL["Loot Pets"]);
	AtlasLootMenuItem_5_Extra:SetText("|cffFF8400Obtained from Player-Only Dungeons");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_Book_02");
	AtlasLootMenuItem_5.lootpage="Nycter_LootPets1";
	AtlasLootMenuItem_5:Show();
	-- Legendary Items
	AtlasLootMenuItem_6_Name:SetText("Nyctermoon Legendary Weapons");
	AtlasLootMenuItem_6_Extra:SetText("|cffFF8400Upgraded from Moonglade Quests");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\inv_qiraj_jewelblessed");
	AtlasLootMenuItem_6.lootpage="Nycter_Legendaries1";
	AtlasLootMenuItem_6:Show();
	--Eternal Recipes
	AtlasLootMenuItem_7_Name:SetText("Eternal Crafting");
	AtlasLootMenuItem_7_Extra:SetText("|cffFF8400Obtained from Crafting and Reputations");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\inv_scroll_05");
	AtlasLootMenuItem_7.lootpage="NYCTERMOON_ETERNALRECIPESMENU";
	AtlasLootMenuItem_7:Show();
	--Illusions
	AtlasLootMenuItem_8_Name:SetText("Griznak the Collector (Booty Bay)");
	AtlasLootMenuItem_8_Extra:SetText("|cffFF8400Trades Rare Items for Tokens of Mastery");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\inv_misc_coin_01");
	AtlasLootMenuItem_8.lootpage="Nycter_TokenTrading";
	AtlasLootMenuItem_8:Show();
	--Miscellaneous
	AtlasLootMenuItem_9_Name:SetText(AL["Miscellaneous"]);
	AtlasLootMenuItem_9_Extra:SetText("|cffFF8400Other Special Nyctermoon Items");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Misc_Ticket_Tarot_Maelstrom_01");
	AtlasLootMenuItem_9.lootpage="Nycter_Miscellaneous";
	AtlasLootMenuItem_9:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Nyctermoon"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_CustomItemsMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF".."Nyctermoon Custom Items");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_LicensesMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFFCompanion Licenses");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_TokenTradingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "NYCTERMOONMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end	
	AtlasLoot_BossName:SetText("|cffFFFFFFGriznak Token Trading");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_IllusionsMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF".."Transmog Gear: Illusions");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_LootPetsMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Loot Pets"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_FactionRewardsMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF".."Faction Rewards");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_MiscellaneousMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Miscellaneous"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_LegendariesMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "NYCTERMOONMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	AtlasLoot_BossName:SetText("|cffFFFFFF".."Nyctermoon Legendary Weapons");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_ClassesMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "NYCTERMOONMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Priest
	AtlasLootMenuItem_3_Name:SetText("|cffffffff"..AL["Priest"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
	AtlasLootMenuItem_3.lootpage="Nycter_Classes_Priest";
	AtlasLootMenuItem_3:Show();
	--Mage
	AtlasLootMenuItem_4_Name:SetText("|cff68ccef"..AL["Mage"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
	AtlasLootMenuItem_4.lootpage="Nycter_Classes_Mage";
	AtlasLootMenuItem_4:Hide();
	--Warlock
	AtlasLootMenuItem_5_Name:SetText("|cff9382c9"..AL["Warlock"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
	AtlasLootMenuItem_5.lootpage="Nycter_Classes_Warlock";
	AtlasLootMenuItem_5:Hide();
	--Rogue
	AtlasLootMenuItem_6_Name:SetText("|cfffff468"..AL["Rogue"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
	AtlasLootMenuItem_6.lootpage="Nycter_Classes_Rogue";
	AtlasLootMenuItem_6:Hide();
	--Druid
	AtlasLootMenuItem_7_Name:SetText("|cffff7c0a"..AL["Druid"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
	AtlasLootMenuItem_7.lootpage="Nycter_Classes_Druid";
	AtlasLootMenuItem_7:Hide();
	--Hunter
	AtlasLootMenuItem_18_Name:SetText("|cffaad372"..AL["Hunter"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
	AtlasLootMenuItem_18.lootpage="Nycter_Classes_Hunter";
	AtlasLootMenuItem_18:Show();
	--Shaman
	AtlasLootMenuItem_19_Name:SetText("|cff2773ff"..AL["Shaman"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
	AtlasLootMenuItem_19.lootpage="Nycter_Classes_Shaman";
	AtlasLootMenuItem_19:Hide();
	--Paladin
	AtlasLootMenuItem_20_Name:SetText("|cfff48cba"..AL["Paladin"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
	AtlasLootMenuItem_20.lootpage="Nycter_Classes_Paladin";
	AtlasLootMenuItem_20:Hide();
	--Warrior
	AtlasLootMenuItem_21_Name:SetText("|cffc69b6d"..AL["Warrior"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
	AtlasLootMenuItem_21.lootpage="Nycter_Classes_Warrior";
	AtlasLootMenuItem_21:Hide();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Classes"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_Nyctermoon_EternalRecipesMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "NYCTERMOONMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Alchemy
	AtlasLootMenuItem_2_Name:SetText("Eternal Crafting: Alchemy");
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_2.lootpage = "Nycter_EternalRecipes_Alchemy1";
	AtlasLootMenuItem_2:Show();
	--Enchanting
	AtlasLootMenuItem_3_Name:SetText("Eternal Crafting: Enchanting");
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_3.lootpage="Nycter_EternalRecipes_Enchanting1";
	AtlasLootMenuItem_3:Show();
	--Engineering
	AtlasLootMenuItem_4_Name:SetText("Eternal Crafting: Engineering");
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_4.lootpage="Nycter_EternalRecipes_Engineering1";
	AtlasLootMenuItem_4:Show();
	--Cooking
	AtlasLootMenuItem_5_Name:SetText("Eternal Crafting: Cooking");
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_5.lootpage="Nycter_EternalRecipes_Cooking1";
	AtlasLootMenuItem_5:Show();
	--Blacksmithing
	AtlasLootMenuItem_6_Name:SetText("Eternal Crafting: Smithing");
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_6.lootpage = "Nycter_EternalRecipes_Smithing1";
	AtlasLootMenuItem_6:Show();
	--First Aid
	AtlasLootMenuItem_7_Name:SetText("Eternal Crafting: First Aid");
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfSacrifice");
	AtlasLootMenuItem_7.lootpage="Nycter_EternalRecipes_FirstAid1";
	AtlasLootMenuItem_7:Show();
	--Poisons
	AtlasLootMenuItem_8_Name:SetText("Eternal Crafting: Poisons");
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_BrewPoison");
	AtlasLootMenuItem_8.lootpage="Nycter_EternalRecipes_Poisons1";
	AtlasLootMenuItem_8:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFFEternal Crafting");
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

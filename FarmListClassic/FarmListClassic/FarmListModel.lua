-- Author      : illoOminated
-- Create Date : 9/30/2020 7:10:14 PM

FarmListModel = {
	DropDownToIndex = {},
	IndexToDropDown = {},
	ConsumablesTab,
	MaterialsTab,

}

function FarmListModel:GetConsumablesOrder(dropdownEntries)
	dropdownOrder = {}
	for k in pairs(dropdownEntries) do 
		table.insert(dropdownOrder, k) 
	end
	table.sort(dropdownOrder)
	return dropdownOrder
end

function FarmListModel:GetConsumablesDropDownOptions()
	result = {}
	result [""] = ""
	result ["Goblin Sapper Charge"] = "|T135826:0|t Goblin Sapper Charge"
	result ["Thorium Grenade"] = "|T133716:0|t Thorium Grenade"
	result ["Dense Dynamite"] = "|T133714:0|t Dense Dynamite"
	result ["Brilliant Wizard Oil"] = "|T134727:0|t Brilliant Wizard Oil"
	result ["Flask of Supreme Power"] = "|T134821:0|t Flask of Supreme Power"
	result ["Major Healing Potion"] = "|T134834:0|t Major Healing Potion"
	result ["Major Mana Potion"] = "|T134856:0|t Major Mana Potion"
	result ["Greater Fire Protection Potion"] = "|T134804:0|t Greater Fire Protection Potion"
	result ["Greater Nature Protection Potion"] = "|T134802:0|t Greater Nature Protection Potion"
	result ["Greater Shadow Protection Potion"] = "|T134803:0|t Greater Shadow Protection Potion"
	result ["Greater Arcane Protection Potion"] = "|T134863:0|t Greater Arcane Protection Potion"
	result ["Greater Frost Protection Potion"] = "|T134800:0|t Greater Frost Protection Potion"
	result ["Elixir of Poison Resistance"] = "|T134743:0|t Elixir of Poison Resistance"
	result ["Limited Invulnerability Potion"] = "|T134842:0|t Limited Invulnerability Potion"
	result ["Major Troll\'s Blood Potion"] = "|T134860:0|t Major Troll\'s Blood Potion"
	result ["Greater Arcane Elixir"] = "|T134805:0|t Greater Arcane Elixir"
	result ["Elixir of Greater Fire Power"] = "|T134840:0|t Elixir of Greater Fire Power"
	result ["Elixir of Fortitude"] = "|T134823:0|t Elixir of Fortitude"
	result ["Elixir of Shadow Power"] = "|T134826:0|t Elixir of Shadow Power"
	result ["Gift of Arthas"] = "|T134808:0|t Gift of Arthas"
	result ["Runn Tum Tuber Surprise"] = "|T134019:0|t Runn Tum Tuber Surprise"
	result ["Heavy Runecloth Bandage"] = "|T133682:0|t Heavy Runecloth Bandage"
	result ["Cerebral Cortex Compound"] = "|T134812:0|t Cerebral Cortex Compound"
	result ["Dark Rune"] = "|T136192:0|t Dark Rune"
	result ["Demonic Rune"] = "|T134417:0|t Demonic Rune"
	result ["Rumsey Rum Black Label"] = "|T132791:0|t Rumsey Rum Black Label"
	result ["Gordok Green Grog"] = "|T132790:0|t Gordok Green Grog"
	result ["Spirit of Zanza"] = "|T134810:0|t Spirit of Zanza"
	result ["Sheen of Zanza"] = "|T134809:0|t Sheen of Zanza"
	result ["Enriched Mana Biscuits"] = "|T133989:0|t Enriched Mana Biscuits"
	result ["Flask of the Titans"] = "|T134842:0|t Flask of the Titans"
	result ["Greater Stoneshield Potion"] = "|T134849:0|t Greater Stoneshield Potion"
	result ["Elixir of Superior Defense"] = "|T134846:0|t Elixir of Superior Defense"
	result ["Elixir of the Mongoose"] = "|T134812:0|t Elixir of the Mongoose"
	result ["Mighty Rage Potion"] = "|T134821:0|t Mighty Rage Potion"
	result ["Free Action Potion"] = "|T134715:0|t Free Action Potion"
	result ["Dense Sharpening Stone"] = "|T135252:0|t Dense Sharpening Stone"
	result ["Winterfall Firewater"] = "|T134872:0|t Winterfall Firewater"
	result ["Juju Power"] = "|T134313:0|t Juju Power"
	result ["Dirge\'s Kickin\' Chimaerok Chops"] = "|T134021:0|t Dirge\'s Kickin\' Chimaerok Chops"
	result ["Smoked Desert Dumplings"] = "|T134020:0|t Smoked Desert Dumplings"
	result ["R.O.I.D.S."] = "|T135241:0|t R.O.I.D.S."
	result ["Elemental Sharpening Stone"] = "|T135228:0|t Elemental Sharpening Stone"
	result ["Elixir of Giants"] = "|T134841:0|t Elixir of Giants"
	result ["Juju Might"] = "|T134309:0|t Juju Might"
	result ["Whipper Root Tuber"] = "|T134011:0|t Whipper Root Tuber"
	result ["Ground Scorpok Assay"] = "|T133849:0|t Ground Scorpok Assay"
	result ["Thistle Tea"] = "|T132819:0|t Thistle Tea"
	result ["Grilled Squid"] = "|T133899:0|t Grilled Squid"
	result ["Scroll of Agility IV"] = "|T134938:0|t Scroll of Agility IV"
	result ["Thorium Headed Arrow"] = "|T132382:0|t Thorium Headed Arrow"
	result ["Doomshot"] = "|T132169:0|t Doomshot"
	result ["Mageblood Potion"] = "|T134825:0|t Mageblood Potion"
	result ["Flask of Distilled Wisdom"] = "|T134877:0|t Flask of Distilled Wisdom"
	result ["Brilliant Mana Oil"] = "|T134722:0|t Brilliant Mana Oil"
	result ["Nightfin Soup"] = "|T132804:0|t Nightfin Soup"
	result ["Kreeg\'s Stout Beatdown"] = "|T132792:0|t Kreeg\'s Stout Beatdown"
	return result
end
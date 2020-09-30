-- Author      : illoOminated
-- Create Date : 9/29/2020 11:03:25 PM

FarmListDB = LibStub("AceAddon-3.0"):NewAddon("FarmListDB")

local defaults = {
	profile = {
		raids = {
			ony = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
			mc = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
			bwl = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
			zg = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
			aq20 = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
			aq40 = { consumables = { ['**'] = { key = "", required = 0 }, }, materials = { ['**'] = { key = "", required = 0 } } },
		}
	}
}

function FarmListDB:Initialize()
	self.DB = LibStub("AceDB-3.0"):New("FarmListData", defaults)
end
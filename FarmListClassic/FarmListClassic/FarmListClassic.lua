FarmListClassic = LibStub("AceAddon-3.0"):NewAddon("FarmListClassic", "AceConsole-3.0", "AceEvent-3.0" );
AceGUI = LibStub("AceGUI-3.0")

local frameShown = false

function FarmListClassic:OnInitialize()
	-- Called when the addon is loaded

	-- Print a message to the chat frame
	self:Print("OnInitialize Event Fired: Hello")

	self:RegisterChatCommand("fl", "ChatCommand")
	self:RegisterChatCommand("farmlist", "ChatCommand")
	FarmListDB:Initialize()
end

local function ConsumableDropdown_OnValueChanged(container, index, dropdown)
	print("OnValueChanged called!")
	if dropdown == nil or dropdown:GetValue() == nil then
		print("Dropdown or GetValue is nil!")
		return
	end

	print("Value changed - index: " .. index .. ", dropdown value: " .. dropdown:GetValue())
	FarmListDB.DB.profile.raids.ony.consumables[index].key = dropdown:GetValue();

	if not FarmListModel.IndexToDropDown[index + 1] then
		FarmListClassic:AddDropDown(container, index + 1, "")
	end	
end

function FarmListClassic:AddDropDown(container, index, consumableKey)
	print("Adding dropdown with index " .. index)
	local dropdown = AceGUI:Create("Dropdown")

	FarmListModel.DropDownToIndex[index] = dropdown
	FarmListModel.IndexToDropDown[dropdown] = index
  
	dropdownEntries = FarmListModel:GetConsumablesDropDownOptions()
	dropdown:SetList(dropdownEntries, FarmListModel:GetConsumablesOrder(dropdownEntries))

	if (consumableKey ~= "") then
		print("Is Set!")
		dropdown:SetValue(consumableKey)
	end

	dropdown:SetCallback("OnValueChanged", ConsumableDropdown_OnValueChanged(container, index, dropdown))  
	dropdown:SetWidth(200)
  
	container:AddChild(dropdown)
end

-- function that draws the widgets for the first tab
function FarmListClassic:DrawConsumables(container)
	print("test3")
	local desc = AceGUI:Create("Label")
	desc:SetText("This is Tab 1")
	desc:SetFullWidth(true)
	container:AddChild(desc)
  
	local button = AceGUI:Create("Button")
	button:SetText("Tab 1 Button")
	button:SetWidth(200)
	container:AddChild(button)

	maxConsumableIndex = getn(FarmListDB.DB.profile.raids.ony.consumables)-1

	print("Max consumable index: " .. maxConsumableIndex)

	for i=0,maxConsumableIndex do
		print(i)
		FarmListClassic:AddDropDown(container, i, FarmListDB.DB.profile.raids.ony.consumables[i])
	end

	FarmListClassic:AddDropDown(container, maxConsumableIndex+1, "")

	--firstEntry = FarmListDB.DB.profile.raids.ony.consumables[0]
	--print("The first entry:")
	--print(FarmListDB.DB.profile.raids.ony.consumables[0].key)
	--AddDropDown(container, 0, firstEntry.key)
end

-- function that draws the widgets for the second tab
function FarmListClassic:DrawGroup2(container)
	print("drawGroup2 Start")
	local desc = AceGUI:Create("Label")
	desc:SetText("This is Tab 2")
	desc:SetFullWidth(true)
	container:AddChild(desc)
  
	print("drawGroup")
	local button = AceGUI:Create("Button")
	button:SetText("Tab 2 Button")
	button:SetWidth(200)
	container:AddChild(button)
	print("drawGroupEnd")
end

-- Callback function for OnGroupSelected
local function SelectGroup(container, event, group)
	container:ReleaseChildren()
	if group == "consumables" then
		print("test2")
		FarmListClassic:DrawConsumables(container)
	elseif group == "farmlist" then
		FarmListClassic:DrawGroup2(container)
	end
end

function FarmListClassic:ShowFrame()
	if frameShown then
		return
	end

	print("test1")

	farmeShown = true
	local frame = AceGUI:Create("Frame")
	frame:SetTitle("FarmList Classic")
	frame:SetStatusText("AceGUI-3.0 Example Container Frame")
	frame:SetCallback("OnClose", function(widget) AceGUI:Release(widget) end)
	
	-- Fill Layout - the TabGroup widget will fill the whole frame
	frame:SetLayout("Fill")

	-- Create the TabGroup
	local tab =  AceGUI:Create("TabGroup")
	tab:SetLayout("Flow")
	-- Setup which tabs to show
	tab:SetTabs({{text="Consumables", value="consumables"}, {text="Farm / Shopping List", value="farmlist"}})
	-- Register callback
	tab:SetCallback("OnGroupSelected", SelectGroup)
	-- Set initial Tab (this will fire the OnGroupSelected callback)
	tab:SelectTab("consumables")

	-- add to the frame container
	frame:AddChild(tab)
	
end

function FarmListClassic:OnEnable()
	-- Called when the addon is enabled

	-- Print a message to the chat frame
	self:Print("OnEnable Event Fired: Hello, again ;)")
	self:ShowFrame()
end

function FarmListClassic:OnDisable()
	-- Called when the addon is disabled
end

function FarmListClassic:ChatCommand()
	self:ShowFrame()
end

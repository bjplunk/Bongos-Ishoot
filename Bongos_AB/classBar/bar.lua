--[[
	ClassBar
		A replacement for the Blizzard shapeshift bar
--]]

local class = select(2, UnitClass('player'))
if not(class == 'DRUID' or class == 'ROGUE' or class == 'WARRIOR' or class == 'PALADIN') then
	return
end

local Bongos = LibStub('AceAddon-3.0'):GetAddon('Bongos3')
local ClassBar = Bongos:NewModule('ClassBar', 'AceEvent-3.0')
local L = LibStub('AceLocale-3.0'):GetLocale('Bongos3-AB')
local DEFAULT_SPACING = 2


local function Bar_SetSpacing(self, spacing)
	self:Layout(nil, spacing)
end

local function Bar_GetSpacing(self)
	return self.sets.spacing or DEFAULT_SPACING
end

local function Bar_Layout(self, cols, space)
	local numForms = GetNumShapeshiftForms()

	cols = (cols or self.sets.cols or numForms)
	self.sets.cols = (cols ~= numForms and cols) or nil

	space = (space or self.sets.space or DEFAULT_SPACING)
	self.sets.space = (space ~= DEFAULT_SPACING and space) or nil

	if numForms > 0 then
		local w = ClassBar.Button:Get(1):GetWidth() + space
		local h = ClassBar.Button:Get(1):GetHeight() + space
		
		for i = 1, numForms do
			local row = (i - 1) % cols
			local col = ceil(i / cols) - 1
			ClassBar.Button:Get(i):SetPoint('TOPLEFT', w * row, -h * col)
		end
		
		self:SetWidth(w * cols - space)
		self:SetHeight(h * ceil(numForms/cols) - space)
	else
		self:SetWidth(30); self:SetHeight(30)
	end
end

local function Bar_CreateMenu(bar)
	local menu = Bongos.Menu:Create(bar.id)
	local panel = menu:AddLayoutPanel()

	--sliders
	panel:CreateSpacingSlider()

	local function Cols_OnShow(self)
		local nForms = max(GetNumShapeshiftForms(), 1)
		self:SetMinMaxValues(1, nForms)
		self:SetValue(nForms - (bar.sets.cols or nForms) + 1)
	end

	local function Cols_UpdateValue(self, value)
		local nForms = max(GetNumShapeshiftForms(), 1)
		bar:Layout(nForms - value + 1)
	end

	local function Cols_UpdateText(self, value)
		local nForms = max(GetNumShapeshiftForms(), 1)
		self.valText:SetText(nForms - value + 1)
	end
	panel:CreateSlider(L.Columns, 1, 1, 1, Cols_OnShow, Cols_UpdateValue, Cols_UpdateText)

	return menu
end

local function Bar_OnCreate(self)
	self.CreateMenu = Bar_CreateMenu
	self.Layout = Bar_Layout
	self.SetSpacing = Bar_SetSpacing
	self.GetSpacing = Bar_GetSpacing
end


--[[ Events ]]--

function ClassBar:Load()
	local defaults = {
		x = 676,
		y = 39,
		point = 'BOTTOMLEFT',
	}
	local bar, isNew = Bongos.Bar:Create('class', defaults)
	if isNew then
		Bar_OnCreate(bar)
	end
	self.bar = bar

	self:UpdateForms()
	self:RegisterEvent('UPDATE_SHAPESHIFT_FORMS', 'UpdateForms')
end

function ClassBar:Unload()
	self:UnregisterAllEvents()
	self.bar:Destroy()
end

function ClassBar:UpdateForms()
	for id = 1, GetNumShapeshiftForms() do
		local button = self.Button:Get(id) or self.Button:Create(id, self.bar)
		button:UpdateSpell()
		button:Show()
	end
	self.bar:Layout()
end
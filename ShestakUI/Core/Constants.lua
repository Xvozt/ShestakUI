﻿local T, C, L = unpack(select(2, ...))

----------------------------------------------------------------------------------------
--	ShestakUI variables
----------------------------------------------------------------------------------------
RAID_CLASS_COLORS.MONK = {r = 0.33, g = 0.54, b = 0.52, colorStr = "FF558A84"}
T.dummy = function() return end
T.name = select(1, UnitName("player"))
T.class = select(2, UnitClass("player"))
T.race = select(2, UnitRace("player"))
T.level = UnitLevel("player")
T.client = GetLocale()
T.realm = GetRealmName()
T.color = RAID_CLASS_COLORS[T.class]
T.version = GetAddOnMetadata("ShestakUI", "Version")
T.getscreenheight = tonumber(string.match(({GetScreenResolutions()})[GetCurrentResolution()], "%d+x(%d+)"))
T.getscreenwidth = tonumber(string.match(({GetScreenResolutions()})[GetCurrentResolution()], "(%d+)x+%d"))
T.patch = select(4, GetBuildInfo())
T.MOPVersion = function()
	if T.patch >= 50000 then
		return true
	else
		return false
	end
end

if T.name == "Вершок" or T.name == "Вещмешок" or T.name == "Гребешок" or T.name == "Кулешок" or T.name == "Лапушок"
or T.name == "Обушок" or T.name == "Ремешок" or T.name == "Торгашок" or T.name == "Черешок" or T.name == "Шестак"
or T.name == "Scape"or T.name == "Shestak" then
	T.author = true
end
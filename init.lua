--This creates the livingdesert object.
livingdesert = {}

--This creates the naturalbiomes.settings object, and fills it with either the menu selected choices as defined in settingtypes.txt, or default values, (In this case, false).
livingdesert.settings = {
	clear_biomes			= minetest.settings:get_bool("livingdesert.clear_biomes") or false,
	clear_decos			= minetest.settings:get_bool("livingdesert.clear_decos") or false,
	clear_ores			= minetest.settings:get_bool("livingdesert.clear_ores") or false,
}

if livingdesert.settings.clear_biomes then
	minetest.clear_registered_biomes()
end
if livingdesert.settings.clear_decos then
	minetest.clear_registered_decorations()
end
if livingdesert.settings.clear_ores then
	minetest.clear_registered_ores()
end

local modname = "livingdesert"
local modpath = minetest.get_modpath(modname)
local mg_name = minetest.get_mapgen_setting("mg_name")

-- Load support for intllib.
local path = minetest.get_modpath(minetest.get_current_modname()) .. "/"

local S = minetest.get_translator and minetest.get_translator("livingdesert") or
		dofile(path .. "intllib.lua")



-- plants
dofile(path .. "desertplants.lua") -- 
dofile(path .. "leafdecay.lua") -- 
dofile(path .. "colddesert.lua") -- 
dofile(path .. "yurts.lua") -- 
dofile(path .. "hunger.lua") -- 


print (S("[MOD] Desert Plants loaded"))

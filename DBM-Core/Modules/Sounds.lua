local isRetail = WOW_PROJECT_ID == (WOW_PROJECT_MAINLINE or 1)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)

local tinsert, unpack = table.insert, unpack

local CL = DBM_COMMON_L

do
	local counts = {
		{	text	= "Corsica",value 	= "Corsica", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Corsica\\", max = 10},
		{	text	= "Koltrane",value 	= "Kolt", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Kolt\\", max = 10},
		{	text	= "Smooth",value 	= "Smooth", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Smooth\\", max = 10},
		{	text	= "Smooth (Reverb)",value 	= "SmoothR", path = "Interface\\AddOns\\DBM-Core\\Sounds\\SmoothReverb\\", max = 10},
		{	text	= "Pewsey",value 	= "Pewsey", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Pewsey\\", max = 10},
		{	text	= "Bear (Child)",value = "Bear", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Bear\\", max = 10},
		{	text	= "Moshne",	value 	= "Mosh", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Mosh\\", max = 5},
		{	text	= "Anshlun (ptBR)",value = "Anshlun", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Anshlun\\", max = 10},
		{	text	= "Neryssa (ptBR)",value = "Neryssa", path = "Interface\\AddOns\\DBM-Core\\Sounds\\Neryssa\\", max = 10},
	}
	local hasCached = false
	local cachedTable
	DBM.Counts = counts -- @Deprecated: Use new utility functions

	function DBM:GetCountSounds()
		if not hasCached then
			cachedTable = {unpack(counts)}
		end
		return cachedTable
	end

	function DBM:AddCountSound(text, value, path, max)
		tinsert(counts, {
			text	= text,
			value	= value or text,
			path	= path,
			max		= max or 10
		})
		hasCached = false
	end
end

do
	local victory = {
		{text = CL.NONE,value  = "None"},
		{text = CL.RANDOM,value  = "Random"},
	}
	local hasCached = false
	local cachedTable
	DBM.Victory = victory -- @Deprecated: Use new utility functions

	function DBM:GetVictorySounds()
		if not hasCached then
			cachedTable = {unpack(victory)}
		end
		return cachedTable
	end

	function DBM:AddVictorySound(text, value, length)
		tinsert(victory, {
			text	= text,
			value	= value,
			length	= length
		})
		hasCached = false
	end
end

do
	local defeat

	if isRetail then
		defeat = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	elseif isWrath then
		defeat = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	else
		defeat = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	end

	local hasCached = false
	local cachedTable
	DBM.Defeat = defeat -- @Deprecated: Use new utility functions

	function DBM:GetDefeatSounds()
		if not hasCached then
			cachedTable = {unpack(defeat)}
		end
		return cachedTable
	end

	function DBM:AddDefeatSound(text, value, length)
		tinsert(defeat, {
			text	= text,
			value	= value,
			length	= length
		})
		hasCached = false
	end
end

do
	-- Filtered list of media assigned to dungeon/raid background music catagory
	local dungeonMusic

	if isRetail then
		dungeonMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	elseif isWrath then
		dungeonMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	else
		dungeonMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	end

	local hasCached = false
	local cachedTable
	DBM.DungeonMusic = dungeonMusic -- @Deprecated: Use new utility functions

	function DBM:GetDungeonMusic()
		if not hasCached then
			cachedTable = {unpack(dungeonMusic)}
		end
		return cachedTable
	end

	function DBM:AddDungeonMusic(text, value, length)
		tinsert(dungeonMusic, {
			text	= text,
			value	= value,
			length	= length
		})
		hasCached = false
	end
end

do
	-- Filtered list of media assigned to boss/encounter background music catagory
	local battleMusic

	if isRetail then
		battleMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
			}
	elseif isWrath then
		battleMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
}
	else
		battleMusic = {
			{text = CL.NONE,value  = "None"},
			{text = CL.RANDOM,value  = "Random"},
		}
	end

	local hasCached = false
	local cachedTable
	DBM.BattleMusic = battleMusic -- @Deprecated: Use new utility functions

	function DBM:GetBattleMusic()
		if not hasCached then
			cachedTable = {unpack(battleMusic)}
		end
		return cachedTable
	end

	function DBM:AddBattleMusic(text, value, length)
		tinsert(battleMusic, {
			text	= text,
			value	= value,
			length	= length
		})
		hasCached = false
	end
end

do
	-- Contains all music media, period
	local music = {
		{text = CL.NONE,value  = "None"},
		{text = CL.RANDOM,value  = "Random"},
		}
	local hasCached = false
	local cachedTable
	DBM.Music = music -- @Deprecated: Use new utility functions

	function DBM:GetMusic()
		if not hasCached then
			cachedTable = {unpack(music)}
		end
		return cachedTable
	end

	function DBM:AddMusic(text, value, length)
		tinsert(music, {
			text	= text,
			value	= value,
			length	= length
		})
		hasCached = false
	end
end

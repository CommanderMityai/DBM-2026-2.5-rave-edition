-- Вставка локальных table В имеющиеся в DBM table звуков
local function insertMusic(musicName, musicId)
    if DBM and DBM.Music and DBM.DungeonMusic and DBM.BattleMusic then
        local musicPath = "Interface\\AddOns\\DBM-CommanderMityaisMusicPack\\Music\\"
        local musicEntry = {text = "MYZYAKA - " .. musicName, value = musicPath .. musicId .. ".mp3"}

        table.insert(DBM.Music, musicEntry)
        if DBM.DungeonMusic then table.insert(DBM.DungeonMusic, musicEntry) end
        if DBM.BattleMusic then table.insert(DBM.BattleMusic, musicEntry) end
    end
end

local function insertVictory(victoryName, victoryId)
    if not DBM or not DBM.AddVictorySound then return end

    local path = "Interface\\AddOns\\DBM-CommanderMityaisMusicPack\\Music\\Victory\\"
    local file = path .. victoryId .. ".mp3"
    local text = "KRASAVA - " .. victoryName

    DBM:AddVictorySound(text, file)
end

local function insertDefeat(defeatName, defeatId)
    if not DBM or not DBM.AddDefeatSound then return end

    local path = "Interface\\AddOns\\DBM-CommanderMityaisMusicPack\\Music\\Defeat\\"
    local file = path .. defeatId .. ".mp3"
    local text = "LOSHOK - " .. defeatName

    DBM:AddDefeatSound(text, file)
end


-- Table Всех имеющихся звуков. Музыка - за музыку, победа - за победу над боссом, defeat - проигрыш в пуле.
-- Имеется поддержка своей музыки, для этого нужно иметь хотя бы IQ больше комнатной температуры
-- И соблюдать шаблон организации table. Для удаления из пула - закомментите НЕСМЕШНОЕ.

local musicTable = {
    ["Music_1Attack"] = "KM - ATTACK",
    ["Music_1Bratan"] = "KM - BRATAN",
    ["Music_1Dreamscape"] = "KM - DREAMSCAPE",
    ["Music_1Dvar"] = "KM - DVAR",
    ["Music_1Good"] = "KM - GOOD",
    ["Music_1KlassGlaza"] = "KM - 1KLAS",
    ["Music_1KlassNFS"] = "KM - 1KLASS",
    ["Music_1Pizdec"] = "KM - PIZDEC",
    ["Music_1prikol"] = "KM - PRIKOL1",
    ["Music_1Pump"] = "KM - PUMP",
    ["Music_1Storm"] = "KM - STORM",
    ["Music_6"] = "KM - SIX",
    ["Music_ace"] = "KM - ACE",
    ["Music_Akvapark"] = "KM - AKVAPARK",
    ["Music_Alabama4"] = "KM - ALABAMA34",
    ["Music_Assault"] = "KM - ASSAULT",
    ["Music_Baka"] = "KM - BAKA",
    ["Music_Bashar"] = "KM - BASHAR",
    ["Music_BassDota"] = "KM - DOTA",
    ["Music_Beast"] = "KM - BEAST",
    ["Music_Beware"] = "KM - BEWARE",
    ["Music_BigBass"] = "KM - BIGBASS",
    ["Music_Bird"] = "KM - BIRD",
    ["Music_blue"] = "KM - BLUE",
    ["Music_Boa"] = "KM - BOA",
    ["Music_Boom"] = "KM - BOOM",
    ["Music_Brigada"] = "KM - BRIGADA",
    ["Music_Bustin"] = "KM - BUSTIN",
    ["Music_Caretaker"] = "KM - CARETAKER",
    ["Music_CBT"] = "KM - CBT",
    ["Music_Chinese"] = "KM - CHINESE",
    ["Music_Cinderella"] = "KM - CINDERELLA",
    ["Music_Coco"] = "KM - COCO",
    ["Music_countdown"] = "KM - COUNTDOWN",
    ["Music_Deathroll"] = "KM - DEATHROLL",
    ["Music_Dog"] = "KM - DOG",
    ["Music_DoKonca"] = "KM - DOKONCA",
    ["Music_down"] = "KM - DOWN",
    ["Music_DownAgarta"] = "KM - DOWNPLUS",
    ["Music_Duna"] = "KM - DUNA",
    ["Music_Earrape"] = "KM - EARRAPE",
    ["Music_Ebat"] = "KM - EBAT",
    ["Music_eee"] = "KM - EEE",
    ["Music_Epic"] = "KM - EPIC",
    ["Music_EvaHard"] = "KM - EVAHARD",
    ["Music_EvaKavkaz"] = "KM - EVAKAVKAZ",
    ["Music_FinalFantasyX"] = "KM - SCATMAN",
    ["Music_Freaks"] = "KM - FREAKS",
    ["Music_Funky"] = "KM - FUNKY",
    ["Music_funny"] = "KM - FUNNY",
    ["Music_Green"] = "KM - GREEN",
    ["Music_Hero"] = "KM - Hero",
    ["Music_HotAgartha"] = "KM - HOTPLUS",
    ["Music_HYLE"] = "KM - HYLE",
    ["Music_Hz"] = "KM - HZ",
    ["Music_ihatemyself"] = "KM - IHATEMYSELF",
    ["Music_JackPot"] = "KM - JACKPOT",
    ["Music_Jeez"] = "KM - JEEZ",
    ["Music_Jet"] = "KM - JET",
    ["Music_KKK"] = "KM - KKK",
    ["Music_Kon"] = "KM - KON",
    ["Music_Kukla"] = "KM - KYKLA",
    ["Music_Lady"] = "KM - LADY",
    ["Music_lesok"] = "KM - LESOK",
    ["Music_Libera"] = "KM - LIBERA",
    ["Music_LowRider"] = "KM - LOWRIDER",
    ["Music_Med"] = "KM - MED",
    ["Music_morshu"] = "KM - MORSHU",
    ["Music_Motherland"] = "KM - MOTHERLAND",
    ["Music_Napas"] = "KM - NAPAS",
    ["Music_negr"] = "KM - NEGR",
    ["Music_Neuro1"] = "KM - NEURO1",
    ["Music_Neuro2"] = "KM - NEURO2",
    ["Music_Neuro3"] = "KM - NEURO3",
    ["Music_NonStop"] = "KM - NonStop",
    ["Music_NFL"] = "KM - NFL",
    ["Music_osvejis"] = "KM - PEPSI",
    ["Music_Paralyzer"] = "KM - PARALYZER",
    ["Music_Party"] = "KM - PARTY",
    ["Music_Pete"] = "KM - PETE",
    ["Music_Pizda"] = "KM - PIZDA",
    ["Music_Pizdis"] = "KM - PIZDIS",
    ["Music_Plakat"] = "KM - PLAKAT",
    ["Music_plasticBoss"] = "KM - PLASTICBOSS",
    ["Music_PlohDokosti"] = "KM - PLOH DO KOSTI",
    ["Music_Poigraeeeem"] = "KM - POIGRAEEEEM",
    ["Music_Pokaji"] = "KM - POKAJI",
    ["Music_Pozvoni"] = "KM - POZVONI",
    ["Music_Prikol"] = "KM - PRIKOL2",
    ["Music_Prokuror"] = "KM - PROKUROR",
    ["Music_Push"] = "KM - PUSH",
    ["Music_Rasslabon"] = "KM - RASSLABON",
    ["Music_Razieb"] = "KM - RAZIEB",
    ["Music_ROD"] = "KM - ROD",
    ["Music_sabre"] = "KM - SABRE",
    ["Music_spanish"] = "KM - SPANISH",
    ["Music_Specnaz"] = "KM - SPECNAZ",
    ["Music_Superman"] = "KM - SUPERMAN",
    ["Music_SuperMarioBros"] = "KM - SMEH",
    ["Music_SuperMarioBros3"] = "KM - PISTOLET",
    ["Music_SuperMarioRPG_Boss"] = "KM - OPERA",
    ["Music_SuperMarioWorld"] = "KM - POCHEM",
    ["Music_Svoyak"] = "KM - SVOYAK",
    ["Music_Telephone"] = "KM - TELEPHONE",
    ["Music_tequilla"] = "KM - TEQUILLA",
    ["Music_uran"] = "KM - URAN",
    ["Music_VDV"] = "KM - VDV",
    ["Music_Vstal"] = "KM - VSTAL",
    ["Music_Whatsapp"] = "KM - WHATSAPP",
    ["Music_WingCommander"] = "KM - CHACHA",
    ["Music_Xakc"] = "KM - XAKCBEHEMOTH",
    ["Music_Zachem"] = "KM - ZACHEM",
    ["Music_Zaichik"] = "KM - ZAICHIK",
    ["Music_Zayac"] = "KM - ZAICHIKNIGHTCORE",
    ["Music_zdrast"] = "KM - ZDRASTE",
}

local victoryTable = {
    ["V_1"] = "V - 1",
    ["V_Amogus"] = "V - AMOGUS",
    ["V_Arbuz"] = "V - ARBUZ",
    ["V_Discoball"] = "V - DISCOBALL",
    ["V_Hydrated"] = "V - HYDRATED",
    ["V_IHI"] = "V - IHI",
    ["V_KRUTO"] = "V - KRUTO",
    ["V_KRUTO2"] = "V - KRUTO2",
    ["V_LVL"] = "V - LVL",
    ["V_Mars"] = "V - MARS",
    ["V_Midnight_SES"] = "V - SES",
    ["V_Mist"] = "V - MIST",
    ["V_NEXT"] = "V - NEXT",
    ["V_NEW"] = "V - NEW",
    ["V_NU"] = "V - NU",
    ["V_PRAVILNO"] = "V - PRAVILNO",
    ["V_QS"] = "V - QS",
    ["V_SOS"] = "V - SOS",
    ["V_Spasibo"] = "V - SPASIBO",
    ["V_WIN"] = "V - WIN",
}

local defeatTable = {
    ["L_BLIN"] = "L - BLIN",
    ["L_COCK"] = "L - COCK",
    ["L_CUM"] = "L - CUM",
    ["L_DON"] = "L - DON",
    ["L_DOTA"] = "L - DOTA",
    ["L_Fart"] = "L - FART",
    ["L_FORTNITE"] = "L - FORTNITE",
    ["L_GEO"] = "L - GEO",
    ["L_GYRO"] = "L - GYRO",
    ["L_HEHE"] = "L - HEHE",
    ["L_JOB"] = "L - JOB",
    ["L_NAH"] = "L - NAH",
    ["L_NOPE"] = "L - NOPE",
    ["L_PIT"] = "L - PIT",
    ["L_PORN"] = "L - PORN",
    ["L_RING"] = "L - RING",
    ["L_SHAME"] = "L - SHAME",
    ["L_TEXT"] = "L - TEXT ",
    ["L_TUHS"] = "L - TUSH",
    ["L_WHATDO"] = "L - WHATDO",
    ["L_WHERE"] = "L - WHERE",
    ["L_WORK"] = "L - WORK"
}


-- ХЗ че это делает, подозреваю что вставка в сам пул и организация чето внутри

function DBMMPMusicPack()
    local musicOrder = {}
    for musicId, musicName in pairs(musicTable) do
        table.insert(musicOrder, {id = musicId, name = musicName})
    end
    
    table.sort(musicOrder, function(a, b)
        return a.name < b.name
    end)
    
    for _, music in ipairs(musicOrder) do
        insertMusic(music.name, music.id)
    end
    for id, name in pairs(victoryTable) do
    insertVictory(name, id)
    end
    for id, name in pairs(defeatTable) do
    insertDefeat(name, id)
    end

end


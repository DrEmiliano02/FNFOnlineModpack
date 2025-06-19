local bfCols = {}
local dadCols = {}

local bf
local dad

local bfColors = ''
local dadColors = ''

function onCreatePost()
    bf = getProperty('boyfriend.curCharacter')
    dad = getProperty('dad.curCharacter')

    bfCols = getProperty('boyfriend.healthColorArray')
    dadCols = getProperty('dad.healthColorArray')

    bfColors = rgb_to_hex(bfCols)
    dadColors = rgb_to_hex(dadCols)
end

function onBeatHit()
    if curBeat % 2 == 0 then
        setProperty('timeBar.color', getColorFromHex(bfColors))
    else
        setProperty('timeBar.color', getColorFromHex(dadColors))
    end
end

function onStepHit() -- idk subpar character switch check
    if bf ~= getProperty('boyfriend.curCharacter') then
        bf = getProperty('boyfriend.curCharacter')
        bfCols = getProperty('boyfriend.healthColorArray')
        bfColors = rgb_to_hex(bfCols)
    end

    if dad ~= getProperty('dad.curCharacter') then
        dad = getProperty('dad.curCharacter')
        dadCols = getProperty('dad.healthColorArray')
        dadColors = rgb_to_hex(dadCols)
    end
end

function rgb_to_hex(rgb)
    return string.format('%x', (rgb[1] * 0x10000) + (rgb[2] * 0x100) + rgb[3])
end
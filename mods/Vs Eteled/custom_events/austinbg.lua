function onEvent(name, value1, value2)
    precacheImage('stages/austinstage/glitchhallway')
    if name == 'austinbg' then
        makeLuaSprite("austinbackground", 'stages/austinstage/glitchhallway', 0, -500)
	    scaleObject('austinbackground', 1.3, 1.3)
	    addLuaSprite("austinbackground", false)
    end
end
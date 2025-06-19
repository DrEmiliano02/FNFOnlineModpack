function onCreate()
	-- background shit
	makeLuaSprite("theArena" , "stages/plazaoff/blackback", 0, -500)
	scaleObject('theArena', 1.3, 1.3);

	makeLuaSprite("overlay" , "stages/plazaoff/edgy", 0, 0)
	scaleObject('overlay', 1.1, 1.1);
	setLuaSpriteScrollFactor('overlay', 0, 0)
	setObjectCamera('overlay', 'other')
	
	addLuaSprite("overlay", false)
	addLuaSprite("theArena", false)
	close(true)
end
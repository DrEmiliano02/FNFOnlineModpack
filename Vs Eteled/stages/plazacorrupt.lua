function onCreate()
	-- background shit
	makeLuaSprite("theArena" , "stages/plazacorrupt/corruptback", 0, -500)
	scaleObject('theArena', 1.3, 1.3);

	makeLuaSprite("overlay" , "stages/plazacorrupt/overlayphase2", 0, -500)
	scaleObject('overlay', 1.1, 1.1);
	setLuaSpriteScrollFactor('overlay', 0, 0)
	setObjectCamera('overlay', 'other')

	makeAnimatedLuaSprite("Chars", "stages/plazacorrupt/Glitchmiibuttons", 250, -200)
	addAnimationByPrefix("Chars", "stagecurtains", "stagecurtains", 24, true)
	objectPlayAnimation("Chars", "stagecurtains", false)
	scaleObject('Chars', 1.1, 1.1);
	
	addLuaSprite("overlay", false)
	addLuaSprite("theArena", false)
	addLuaSprite("Chars", false)
	close(true)
end
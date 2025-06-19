function onCreate()
	-- background shit
	makeLuaSprite("theArena" , "stages/plaza/stageback", 0, -500)
	addLuaSprite("theArena", false)
	scaleObject('theArena', 1.3, 1.3);
	close(true)

	makeAnimatedLuaSprite("Chars", "stages/plaza/miibuttons", 250, -200)
	addAnimationByPrefix("Chars", "stagecurtains", "stagecurtains", 24, true)
	addLuaSprite("Chars", false)
	objectPlayAnimation("Chars", "stagecurtains", false)
	scaleObject('Chars', 1.1, 1.1);
	close(true)
end
function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'Scream' then
        playAnim('dad', 'scream', true)
        setProperty('dad.skipDance', true)
        runTimer('screamnt', 0.5)
        triggerEvent('Screen Shake', '0.5, 0.01', '0.5, 0.005')
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'screamnt' then
        setProperty('dad.skipDance', false)
    end
end
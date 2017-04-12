scriptId = 'com.heedlessstar.examples.myfirstscript'
scriptTitle = "My First Script"
scriptDetailsUrl = ""

function onPoseEdge(pose, edge)
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    if pose == 'waveIn' and edge =='on' then
        myo.keyboard("left_arrow", "press","control")
    end
end

function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    myo.vibrate("short")
    return platform == "MacOS" 
end

function activeAppName()
    return "Output Everything"
end

function onPeriod()
    myo.debug("Arm : " .. myo.getArm())
end

function onActiveChange(isActive)
    myo.unlock()
    myo.debug("onActiveChange")
end
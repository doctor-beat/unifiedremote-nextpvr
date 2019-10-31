local keyboard = libs.keyboard;

events.detect = function ()
	if OS_WINDOWS then
	    return 
		    libs.fs.exists("C:\\Program Files (x86)\\NextPVR") or
		    libs.fs.exists("C:\\Program Files\\NextPVR");
    else
        return true;
    end
end

--@help Launch NextPVR application
actions.launch = function()
	if OS_WINDOWS then
		os.start("%programfiles(x86)%\\NextPVR\NextPVR.exe");
	end
end

--volume:

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("volumeup");
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("volumedown");
end

--@help Mute volume
actions.volume_mute = function()
	keyboard.stroke("volumemute");
end

--left right, up down, select, back

--@help Navigate up
actions.up = function()
	keyboard.stroke("up");
end

--@help Navigate left
actions.left = function()
	keyboard.stroke("left");
end

--@help Select current item
actions.select = function()
	keyboard.stroke("return");
end

--@help Navigate right
actions.right = function()
	keyboard.stroke("right");
end

--@help Navigate down
actions.down = function()
	keyboard.stroke("down");
end

--@help Navigate back
actions.back = function()
	keyboard.stroke("back");
end

-- home, info, full

--@help Navigate home
actions.home = function()
	keyboard.stroke("home");
end

--@help Toggle fullscreen
actions.fullscreen = function()
	keyboard.stroke("alt", "enter");
end

--@help Show information
actions.info = function()
	keyboard.stroke("ctrl", "b");
end

--- channel+/- record

--@help Channel+
actions.channel_up = function ()
	keyboard.stroke("+");
end

--@help Channel-
actions.channel_down = function ()
	keyboard.stroke("-");
end
--@help Channel-

actions.record = function ()
	keyboard.stroke("ctrl", "k");
end

-- play pause stop:

--@help Start playback
actions.play = function()
	keyboard.stroke("control", "p");
end

--@help Pause playback
actions.pause = function()
	keyboard.stroke("control", "q");
end

--@help Stop playback
actions.stop = function()
	keyboard.stroke("control", "ss");
end

--@help Back
actions.back = function()
	keyboard.stroke("escape");
end

--@help Epg
actions.epg = function()
	keyboard.stroke("f1");
end





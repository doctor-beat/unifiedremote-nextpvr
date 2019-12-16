local keyboard = libs.keyboard;

events.detect = function ()
	if OS_WINDOWS then
	    return 
		    libs.fs.exists("C:\\Program Files (x86)\\NPVR") or
		    libs.fs.exists("C:\\Program Files\\NPVR");
    else
        return true;
    end
end

--@help Focus Firefox application
actions.switch = function()
	if OS_WINDOWS then
		local hwnd = win.window("NextPVR.exe");
		if (hwnd ~= 0) then win.switchtowait("NextPVR.exe"); end
	end
end

--@help Launch NextPVR application
actions.launch = function()
	if OS_WINDOWS then
		local hwnd = win.window("NextPVR.exe");
		if (hwnd == 0) then os.start("%programfiles(x86)%\\NPVR\\NextPVR.exe"); end
	end
    actions.switch();
end

--volume:

--@help Raise volume
actions.volume_up = function()
	actions.switch();
	keyboard.stroke("volumeup");
end

--@help Lower volume
actions.volume_down = function()
	actions.switch();
	keyboard.stroke("volumedown");
end

--@help Mute volume
actions.volume_mute = function()
	actions.switch();
	keyboard.stroke("volumemute");
end

--left right, up down, select, back

--@help Navigate up
actions.up = function()
	actions.switch();
	keyboard.stroke("up");
end

--@help Navigate left
actions.left = function()
	actions.switch();
	keyboard.stroke("left");
end

--@help Select current item
actions.select = function()
	actions.switch();
	keyboard.stroke("return");
end

--@help Navigate right
actions.right = function()
	actions.switch();
	keyboard.stroke("right");
end

--@help Navigate down
actions.down = function()
	actions.switch();
	keyboard.stroke("down");
end

--@help Navigate back
actions.back = function()
	actions.switch();
	keyboard.stroke("back");
end

-- home, info, full

--@help Navigate home
actions.home = function()
	actions.switch();
	keyboard.stroke("home");
end

--@help Toggle fullscreen
actions.fullscreen = function()
	actions.switch();
	keyboard.stroke("alt", "enter");
end

--@help Show information
actions.info = function()
	actions.switch();
	keyboard.stroke("ctrl", "b");
end

--- channel+/- record

--@help Channel+
actions.channel_up = function ()
	actions.switch();
	keyboard.stroke("numadd");
end

--@help Channel-
actions.channel_down = function ()
	actions.switch();
	keyboard.stroke("numsubtract");
end
--@help Channel-

actions.record = function ()
	actions.switch();
	keyboard.stroke("ctrl", "k");
end

-- play pause stop:

--@help Start playback
actions.play = function()
	actions.switch();
	keyboard.stroke("control", "p");
end

--@help Pause playback
actions.playpause = function()
	actions.switch();
	keyboard.stroke("control", "q");
end

actions.rewind = function()
	actions.switch();
	keyboard.stroke("control", "r");
end

actions.forward = function()
	actions.switch();
	keyboard.stroke("control", "f");
end

actions.replay = function()
	actions.switch();
	keyboard.stroke("control", "left");
end

actions.skip = function()
	actions.switch();
	keyboard.stroke("control", "right");
end

--@help Stop playback
actions.stop = function()
	actions.switch();
	keyboard.stroke("control", "s");
end

--@help Back
actions.back = function()
	actions.switch();
	keyboard.stroke("escape");
end

--@help Epg
actions.epg = function()
	actions.switch();
	keyboard.stroke("F1");
end

actions.exit = function ()
	actions.switch();
		keyboard.stroke("alt", "F4");
end

actions.space  = function ()
	actions.switch();
	keyboard.stroke("space");
end




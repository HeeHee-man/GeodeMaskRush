// Input orizzontale
xsp = 0
if (keyboard_check(vk_left))  xsp = -walksp
if (keyboard_check(vk_right)) xsp =  walksp

// Gravità (ACCUMULA)
ysp += grv

// Salto solo se a terra
if (place_meeting(x, y + 1, oFloor)) {
    if (keyboard_check_pressed(vk_space) || keyboard_check(vk_up)) {
        ysp = jumpsp
		//audio_play_sound(snd_jump,0, false)
    }
}

if (place_meeting(x, y + 1, oBlueBlock)) {
    if (keyboard_check_pressed(vk_space) || keyboard_check(vk_up)) {
        ysp = jumpsp
		//audio_play_sound(snd_jump,0, false)
    }
}

if (place_meeting(x, y + 1, oRedBlock)) {
    if (keyboard_check_pressed(vk_space) || keyboard_check(vk_up)) {
        ysp = jumpsp
		//audio_play_sound(snd_jump,0, false)
    }
}

if (place_meeting(x, y + 1, oYellowBlock)) {
    if (keyboard_check_pressed(vk_space) || keyboard_check(vk_up)) {
        ysp = jumpsp
		//audio_play_sound(snd_jump,0, false)
    }
}

// Collisioni orizzontali
if (place_meeting(x + xsp, y, oFloor)) {
    xsp = 0
}


// Collisioni verticali
if (place_meeting(x, y + ysp, oFloor)) {
    ysp = 0
}


//Blocco blu
if (place_meeting(x + xsp, y, oBlueBlock)) {
	xsp = 0
}

if (place_meeting(x, y + ysp, oBlueBlock)) {
	ysp = 0
}

//Blocco rosso
if (place_meeting(x + xsp, y, oRedBlock)) {
	xsp = 0
}

if (place_meeting(x, y + ysp, oRedBlock)) {
	ysp = 0
}

//Blocco giallo
if (place_meeting(x + xsp, y, oYellowBlock)) {
	xsp = 0
}

if (place_meeting(x, y + ysp, oYellowBlock)) {
	ysp = 0
}
x += xsp
y += ysp

//Triangolo blu
if (place_meeting(x + xsp, y, oBlueTriangle)) {
	x = spawnx
	y = spawny
	room_restart()
}

if (place_meeting(x, y + ysp, oBlueTriangle)) {
	y = spawny
	x = spawnx
	room_restart()
}

//Triangolo rosso
if (place_meeting(x + xsp, y, oRedTriangle)) {
	x = spawnx
	y = spawny
	room_restart()
}

if (place_meeting(x, y + ysp, oRedTriangle)) {
	y = spawny
	x = spawnx
	room_restart()
}

//Triangolo giallo
if (place_meeting(x + xsp, y, oYellowTriangle)) {
	x = spawnx
	y = spawny
	room_restart()
}

if (place_meeting(x, y + ysp, oYellowTriangle)) {
	y = spawny
	x = spawnx
	room_restart()
}

//Porta
if (place_meeting(x + xsp, y, oDoor)) {
	room_goto_next()
}

if (place_meeting(x, y + ysp, oDoor)) {
	room_goto_next()
}

//Maschera rossa
if (place_meeting(x, y + ysp, oRedMask)) {
	global.redmask = 1
	instance_deactivate_object(oRedMask)
	instance_activate_object(oRedMaskHUD)
}

if (place_meeting(x + xsp, y, oRedMask)) {
	global.redmask = 1
	instance_deactivate_object(oRedMask)
}

//Maschera blu
if (place_meeting(x, y + ysp, oBlueMask)) {
	global.bluemask = 1
	instance_deactivate_object(oBlueMask)
}

if (place_meeting(x + xsp, y, oBlueMask)) {
	global.bluemask = 1
	instance_deactivate_object(oBlueMask)
}

//Maschera gialla
if (place_meeting(x, y + ysp, oYellowMask)) {
	global.yellowmask = 1
	instance_deactivate_object(oYellowMask)
}

if (place_meeting(x + xsp, y, oYellowMask)) {
	global.yellowmask = 1
	instance_deactivate_object(oYellowMask)
}
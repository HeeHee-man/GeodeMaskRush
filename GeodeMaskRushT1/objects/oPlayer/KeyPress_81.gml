if (global.has_redmask == 1) {
	global.redmask = 1;
	global.yellowmask = 0;
	global.bluemask = 0;
}

if (global.redmask == 1) {
	instance_deactivate_object(oRedTriangle)
	instance_activate_object(oBlueTriangle)
	instance_activate_object(oYellowTriangle)
	instance_deactivate_object(oRedBlock)
	instance_activate_object(oBlueBlock)
	instance_activate_object(oYellowBlock)
	sprite_index = sPlayer_Idle_R
	y--
}


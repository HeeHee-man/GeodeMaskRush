if (global.has_bluemask == 1) {
	global.bluemask = 1;
	global.yellowmask = 0;
	global.redmask = 0;
}

if (global.bluemask == 1) {
	instance_deactivate_object(oBlueTriangle)
	instance_activate_object(oRedTriangle)
	instance_activate_object(oYellowTriangle)
	instance_deactivate_object(oBlueBlock)
	instance_activate_object(oRedBlock)
	instance_activate_object(oYellowBlock)
	y--
}
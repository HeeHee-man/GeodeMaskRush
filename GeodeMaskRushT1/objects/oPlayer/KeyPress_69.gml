if (global.has_yellowmask == 1) {
	global.yellowmask = 1;
	global.redmask = 0;
	global.bluemask = 0;
}

if (global.yellowmask == 1) {
	instance_deactivate_object(oYellowTriangle)
	instance_deactivate_object(oYellowBlock)
	instance_activate_object(oRedBlock)
	instance_activate_object(oRedTriangle)
	instance_activate_object(oBlueTriangle)
	instance_activate_object(oBlueBlock)
	y--
}
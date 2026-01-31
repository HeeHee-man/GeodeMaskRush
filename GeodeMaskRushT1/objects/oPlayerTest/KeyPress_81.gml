if (global.redmask == 1) {
	instance_deactivate_object(oRedTriangle)
	instance_activate_object(oBlueTriangle)
	instance_activate_object(oYellowTriangle)
	instance_deactivate_object(oRedBlock)
	instance_activate_object(oBlueBlock)
	instance_activate_object(oYellowBlock)
}
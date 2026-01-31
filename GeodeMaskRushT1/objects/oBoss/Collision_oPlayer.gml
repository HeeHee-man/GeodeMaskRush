if (global.hp == 3 || global.hp == 2 || global.hp == 1) {
	room_restart()
}

if (global.hp == 0) {
	instance_deactivate_object(oBoss)
	instance_deactivate_object(oRedTriangleBoss)
	instance_deactivate_object(oBlueTriangleBoss)
	instance_deactivate_object(oYellowTriangleBoss)
	instance_activate_object(oDoor)
}
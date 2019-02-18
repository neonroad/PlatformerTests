///@desc Check if uncrouch is possible

var duckDeny = true;

if(ducking){
	mask_index = spriteMap[?SPRITEMAP.IDLE];
	if(instance_place(x,y,obj_Wall) != noone){
		duckDeny = false;	
	}
	mask_index = spriteMap[?SPRITEMAP.DUCKING];
}

return duckDeny;
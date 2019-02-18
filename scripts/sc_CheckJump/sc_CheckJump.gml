///@desc Check if jump is possible

var jumpDeny = true;


	if(instance_place(x,y-2,obj_Wall) != noone){
		jumpDeny = false;	
	}

return jumpDeny;
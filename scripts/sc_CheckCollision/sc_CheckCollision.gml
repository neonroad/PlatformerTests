///@desc Check to see if there's a wall


var collision = false;
var offset = 1;

var wall = noone;
var touchingX = false;
var touchingY = false;



wall = instance_place((x+hsp) + (offset * sign(hsp)),y,obj_Wall);

if(wall != noone){
	collision = true;
	touchingX = true;
	
	if (hsp > 0) { //Going Right
		x = floor(wall.bbox_left + (x - bbox_right) - offset);
	} else if (hsp < 0)//Going Left
		x = ceil(wall.bbox_right + (x - bbox_left) + offset);
	
	hsp = 0;

}

wall = instance_place(x,y+vsp,obj_Wall);

if(wall != noone){
	collision = true;
	touchingY = true;
	
	if (vsp > 0) //Falling
		y = floor(wall.bbox_top + (y - bbox_bottom) - offset);
	else if (vsp < 0) //Going up
		y = ceil(wall.bbox_bottom + (y - bbox_top) + offset);
	
	vsp = 0;

}


if(vsp == 0 && instance_place(x+hsp,y+1+offset,obj_Wall) != noone){
	standing = true;	
}
else{
	standing = false;	
}




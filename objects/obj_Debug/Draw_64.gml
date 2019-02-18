/// @description  

if(instance_exists(obj_playerChar)){
	draw_text(150,150,string("Standing: " + string(obj_playerChar.standing)));
	draw_text(150,200,string("MovingLR: " + string(obj_playerChar.movingLR)));
	draw_text(150,250,string("HSP: " + string(obj_playerChar.hsp)));
}


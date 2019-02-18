
var key_jump = vk_space;
var key_right = ord("D");
var key_left = ord("A");
var key_down = ord("S");
var key_up = ord("W");

var duckControl = 1;

movingLR = 0;

if(ducking){
	duckControl = 0.5;	
}

var maxSpeed = abs(hsp) > walk_speed_max * duckControl;

if(canControl){
	
	//Move
	
	//Disable moves if moving both ways
	if(keyboard_check(key_right) && keyboard_check(key_left)){
		if(movingLR != 0)
			directionFacing = movingLR;
		
		movingLR = 0;	
		bothKeysPressed = true;
	}
	
	else{
		bothKeysPressed = false;	
	}
	
	
	
	//If you're not pressing both keys
	if(!bothKeysPressed){
		
		if(keyboard_check(key_right)){
			movingLR = 1;
		
			if(!maxSpeed)
				hsp += walk_speed_acc ;	
		
			directionFacing = 1;
		}
		if(keyboard_check(key_left)){
			movingLR = -1;
		
			if(!maxSpeed)
				hsp -= walk_speed_acc ;	
		
			directionFacing = -1;
		}
	
	}
	
	
	if(standing){
		
		if(keyboard_check(key_down)){
			ducking = true;
		}
		
		//If you are no longer ducking
		else if(ducking){
			
			if(sc_CheckUncrouch() ){
				ducking = false;
			}
		}
	
		//Check if you can jump
		if(keyboard_check_pressed(key_jump)){
			
			if(sc_CheckUncrouch() ){
				ducking = false;
				vsp -= jump_max;	
				jumping = true;
				standing = false;
			}
		}
	
	}
	//Not standing
	else{
		
		ducking = false;
		
		if(vsp == 0 || (!keyboard_check(key_jump) && jumping) ){
			vsp /= 2;	
			jumping = false;
		}
	}
	
	//Friction
	hsp += (walk_speed_acc/2) * -sign(hsp);	
	
	

}

if(abs(hsp) < 0.05){
	hsp = 0;	
}

sc_ConfirmState();




//Check if running in same direction intentionally

var facingRunDir = (movingLR == sign(hsp));


//Check for full walk cycle
if(!standing && abs(hsp) > walk_speed_max/1.5){
	fullWalkCycle = true;
}

if(round(hsp) == 0){
	fullWalkCycle = false;	
}

//All standing animations

if(standing){
	
	//Idle
	if(hsp == 0 && returnToIdle){

		displaySprite = spriteMap[?SPRITEMAP.IDLE];
		sc_DrawAnimation(1);
	}

	//Moving AND controlling
	else if(movingLR != 0){

		//Check if running in same direction facing
		
		if(facingRunDir){
		
			//Moving, start walk cycle
			if(!fullWalkCycle){

				sc_ResetAnim(spriteMap[? SPRITEMAP.STARTWALK]);

				displaySprite = spriteMap[? SPRITEMAP.STARTWALK];
		
				if(sc_DrawAnimation(0)){
					fullWalkCycle = true;	
				}
			}
		
			//Loop cycle
			if(fullWalkCycle){
				sc_ResetAnim(spriteMap[? SPRITEMAP.WALK]);
		
				displaySprite = spriteMap[? SPRITEMAP.WALK];
				sc_DrawAnimation(1);
			}
		
		}
		
		//Turn around
		
		else if(!facingRunDir){
			displaySprite = spriteMap[? SPRITEMAP.TURN];
			sc_DrawAnimation(1);
		}
	}
	
	//No longer controlling
	else if(( hsp!= 0 || !returnToIdle) && movingLR == 0 ){
		
		returnToIdle = false;
		
		
		sc_ResetAnim(spriteMap[?SPRITEMAP.SKIDTOSTOP]);
		displaySprite = spriteMap[? SPRITEMAP.SKIDTOSTOP];
		if(sc_DrawAnimation(0)){
			returnToIdle = true;	
		}
	}
	
	
}

//Not standing
else{
	returnToIdle = true;
	
	//Free fall
	if(vsp > 0){
		displaySprite = spriteMap[?SPRITEMAP.FALL];	
		sc_DrawAnimation(1);
	}
	else{
		displaySprite = spriteMap[?SPRITEMAP.RISE];
		sc_DrawAnimation(1);
	}
	
	
}


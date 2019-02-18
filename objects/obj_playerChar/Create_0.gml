/// @description Initialize Variables

hsp = 0;
vsp = 0;

grv = 0.8;


standing = false;

jump_max = 20;
jumping = false;
ducking = false;

walk_speed_max = 8;
walk_speed_acc = walk_speed_max * 0.2;


enum ENTITYSTATE{
	NORMAL, DUCKING
}

currentState = ENTITYSTATE.NORMAL;
canControl = true;


enum SPRITEMAP{
	IDLE, DUCKING, STARTWALK, WALK,FALL,RISE,TURN,SKIDTOSTOP
	
}

//Animate full walk
fullWalkCycle = false;

//Transition to idle animation
returnToIdle = true;

//Keep player from pressing both at same time
bothKeysPressed = false;

spriteMap = ds_map_create();

spriteMap[?SPRITEMAP.IDLE] = sp_playerIdle;
spriteMap[?SPRITEMAP.DUCKING] = sp_playerDucking;
spriteMap[?SPRITEMAP.WALK] = sp_playerWalkCycle;
spriteMap[?SPRITEMAP.STARTWALK] = sp_playerWalkStart;
spriteMap[?SPRITEMAP.FALL] = sp_playerFreeFall;
spriteMap[?SPRITEMAP.RISE] = sp_playerRise;
spriteMap[?SPRITEMAP.TURN] = sp_playerTurn;
spriteMap[?SPRITEMAP.SKIDTOSTOP] = sp_playerSkidToStop;


//1 for right
directionFacing = 1;

//Controlling and moving
//1 for right
movingLR = 0;

image_speed = 0.5;

animationVar = 0;

currentCol = c_white;

displaySprite = sprite_index;

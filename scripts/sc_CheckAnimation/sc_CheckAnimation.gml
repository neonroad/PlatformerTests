

switch (currentState) {
    case ENTITYSTATE.NORMAL:
		
		sc_NormalAnimation();		
		
        break;
		
	case ENTITYSTATE.DUCKING:
		displaySprite = spriteMap[?SPRITEMAP.DUCKING];
		
		sc_DrawAnimation(1);
		break;
}


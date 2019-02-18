

switch (currentState) {
    case ENTITYSTATE.NORMAL:
		mask_index = spriteMap[?SPRITEMAP.IDLE];
        canControl = true;
        break;
		
		
	case ENTITYSTATE.DUCKING:
		canControl = true;
		mask_index = spriteMap[?SPRITEMAP.DUCKING];
		break;
}


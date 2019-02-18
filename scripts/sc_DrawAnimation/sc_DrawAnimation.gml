///@desc Draw the animation for the current displaySprite.
///@arg loop Loop the sprite. 0 for no, 1 for yes.

var loop = argument[0];


var maxSubImg = sprite_get_number(displaySprite)-1;

switch (loop) {
    case 1:
        if(floor(animationVar) > maxSubImg){
			animationVar = 0;	
		}
        break;
    case 0:
        if(floor(animationVar) >= maxSubImg){
			animationVar = maxSubImg;	
			draw_sprite_ext(displaySprite,floor(animationVar),x,y,directionFacing * image_xscale, image_yscale,image_angle,currentCol,image_alpha);
			return true;
		}
        break;
}

animationVar+= image_speed;

draw_sprite_ext(displaySprite,floor(animationVar),x,y,directionFacing * image_xscale, image_yscale,image_angle,currentCol,image_alpha);
return false;


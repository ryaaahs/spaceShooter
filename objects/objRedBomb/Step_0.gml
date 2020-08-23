/// @description  Make the bomb functional 

y += y_speed; 

// Destroy the bomb
if (hp <= 0){
    instance_destroy(); 
}


// Collision with Enemy explosion
if (place_meeting(x, y, objShipExplosion)) || (place_meeting(x, y, objBigShipExplosion)){
    instance_destroy(); 
}

// Bomb sprite
if (hp <= 1){
    sprite_index = spr_bomb;
    image_index = 2; 
}




/// @description  Make the bomb functional 

y += y_speed; 

// Destroy the bomb
if (hp <= 0){
    instance_destroy(); 
}


// Collision with Enemy explosion
if (place_meeting(x, y, objShipExplosion)) {
    instance_destroy(); 
}

// Bomb sprites 
if (hp == 3){
    image_index = 0;
}
else if (hp == 2){
    sprite_index = sprBombFlicker;
    image_speed = 0.2; 
}
else if (hp == 1){
    sprite_index = sprBomb;
    image_index = 2; 
}




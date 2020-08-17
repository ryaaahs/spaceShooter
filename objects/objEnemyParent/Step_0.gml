/// @description  Destroy the ship if hp <= 0 


x += enemy_horz_speed; // Give the ships movement 
y += enemy_vert_speed;

if (y > room_height + 16){ // Reset the enemy
    y = -16;
    x = irandom_range(16,224); 
}

if (hp <= 0){
    instance_destroy(); 
}


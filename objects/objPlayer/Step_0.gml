/// @description  Make the player functional 

// Player Inputs 
key_right = keyboard_check(ord("D")); 
key_left = keyboard_check(ord("A"));
key_space = keyboard_check_pressed(vk_space); 

// React to inputs 
var move = key_right - key_left;
x_speed = move * player_speed;

// Zero lifes, kill the player 
if(hp <= 0){
    instance_destroy(); 
}

// Invincibility animation 
if (invincibility){
    sprite_index = sprPlayerInvincibility;
    image_speed = 0.2; 
}
else{
    sprite_index = sprPlayer; 
    image_speed = 0;
}

// Player Collisions 
if (!invincibility){
    //Enemys 
    if (place_meeting(x, y, objEnemyParent)){
            var collided_enemy = instance_place(x, y, objEnemyParent);
            with(collided_enemy) {
                instance_destroy();
            }
        hp += -1;
        invincibility = true; 
        alarm[1] = room_speed * INVINCIBILTY_TIME; 
    }

    // Explosion
    if (place_meeting(x, y, objExplosion)){
        hp += -1;
        invincibility = true;
        alarm[1] = room_speed * INVINCIBILTY_TIME; 
    }
    
    //Enemy Bullet
    if (place_meeting(x, y, objEnemyBullet)){
            var collided_bullet = instance_place(x, y, objEnemyBullet);
            with(collided_bullet){
                instance_destroy();
            }
        hp += -1;
        invincibility = true;
        alarm[1] = room_speed * INVINCIBILTY_TIME; 
    }
    
    //Bomb
    if (place_meeting(x, y, objBomb)) || (place_meeting(x, y, objRedBomb)){
            var collided_bomb = instance_place(x, y, objRedBomb);
            with(collided_bomb){
                instance_destroy();
            }
    }
}

x += x_speed; 
x = clamp(x,16,room_width - 16);


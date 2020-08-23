/// @description  Create the bullet 

instance_create_layer(x, y, "gameLayer", obj_enemy_bullet);

alarm[ENEMY_GUN_ALARM] = room_speed * 2; // Reset the shootimg


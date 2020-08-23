/// @description  Make the Bullet functional

y += bullet_speed; 

// Destroy the bullet (Explosion) 
if (place_meeting(x, y, objExplosion)){
    instance_destroy(); 
}


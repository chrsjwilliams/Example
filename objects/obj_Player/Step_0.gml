/// @description Insert description here
// You can write your code in this editor



x_vel *= 0.92;
y_vel += grav;


// increment remainder values, carrying over  fractional pixels from previous frame
rx += x_vel;
ry += y_vel;

// how many pixels we move (not counting fractional parts
var to_move_x = round(rx);
var to_move_y = round(ry);

// get the fractional pixels left over after we move
rx -= to_move_x;
ry -= to_move_y;

// get directtion of vertical movement
var sy = sign(to_move_y);

x += to_move_x;

// do this whole loop one pixel ata time,
// we only want to collide with an object
// if we are currently NOT overlapping it
while(to_move_y != 0){
	var colliding = false;
	var collide_with = noone;
	if(sy >= 0){ //only interested in colliding if moving down
		collide_with = instance_place(x, y + sy, obj_Platform);
		if(collide_with != noone){
			//only collide if not already overlapping
			
			//Accessing Hello function of my platform
			//collide_with.hello();
			
			if(place_meeting(x, y, collide_with) == false){
				colliding = true;
			}
		}
	}
	if(!colliding){
		y += sy;
		to_move_y -= sy;
	}
	else if(colliding){
		y += sy;
		y_vel = jump_vel;
		ry = 0;
		break;
	}
	else{
		break;
	}
}



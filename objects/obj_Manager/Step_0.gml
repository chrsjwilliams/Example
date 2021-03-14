/// @description Insert description here
// You can write your code in this editor
var frame_between_platforms = 30;
var max_platforms = 30;
var num_platforms = instance_number(obj_Platform);

frames_since_platform += 1;	// increment timer variable

if(frames_since_platform > frame_between_platforms || num_platforms < 4){
	if(num_platforms < max_platforms){
		// enough time has passed, and we don't have too many platforms,
		// so let's make a new one in a random place
		var new_platform = instance_create_layer(
									random_range(16, room_width - 16),
									random_range(108, room_height - 32),
									"Instances",
									obj_Platform);
		// I want to make sure the new platform isnt' overlapping any other
		// platforms or players, so let's move it
		// If it is currently overlapping something (and only try a max of 30000 times
		// just in case it's impossible)
		with(new_platform){
			var tries = 0;
			while((collision_rectangle(x-25, y-16,x+25,y+32,obj_Platform,false, true) != noone ||
				  collision_rectangle(x-25, y-16,x+25,y+32,obj_solid,false, true)) &&
					tries < 30000){
				x = random_range(16, room_width-16);
				y = random_range(108, room_height-32);
				tries += 1;
			}
		}
		
		num_platforms++;
	}
	frames_since_platform = 0; // reset the timer variable
}
/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("J"))){
	x_vel -= player_accel;
	
}
if (keyboard_check(ord("L"))){
	x_vel += player_accel;
}

event_inherited();
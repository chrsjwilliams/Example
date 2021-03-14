/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))){
	x_vel -= player_accel;
	
}
if (keyboard_check(ord("D"))){
	x_vel += player_accel;
}

event_inherited();
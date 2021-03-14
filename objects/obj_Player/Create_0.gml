/// @description Insert description here
// You can write your code in this editor


fname = "./tuning.ini";

if(!file_exists(fname)){
	ini_open(fname);
	ini_write_real("gameplay", "gravity", 0.25);
	ini_close();
	
}

ini_open(fname);
grav = ini_read_real( "gameplay", "gravity", 0.25 ); 
ini_close();


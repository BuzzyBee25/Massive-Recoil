/// @description Insert description here
// You can write your code in this editor
hascontrol = 1
maxshot = 1
canfire = 1
rev = 0
bullets = OBullet
warp = 0
recoil = 0

if file_exists(SAVEFILE){
	var file = file_text_open_read(SAVEFILE)
	poweru = file_text_read_real(file)
	file_text_close(file)
}
else poweru = 0

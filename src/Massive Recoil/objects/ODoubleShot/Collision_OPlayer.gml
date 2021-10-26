/// @description Insert description here
// You can write your code in this editor
if file_exists(SAVEFILE) file_delete(SAVEFILE)

var file
file = file_text_open_write(SAVEFILE)
file_text_write_real(file,1)
file_text_close(file)

OGun.poweru = 1

with instance_create_layer(x,y,"Player",OTutorial){
	scale = 0
	OGun.hascontrol = 0
	bullet = SBullet
	text = "You can now shoot once in midair."
}

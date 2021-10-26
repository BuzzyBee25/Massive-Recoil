/// @description Insert description here
// You can write your code in this editor
#macro SAVEFILE "save.sav"
vsp = 0
hsp = 0
dir = 0
grv = 0.5
fric = 0
if file_exists(SAVEFILE){
	var file = file_text_open_read(SAVEFILE)
	var tutorial = file_text_read_real(file)
	if tutorial == 0 instance_create_layer(x,y,"Player",OTutorial)
	file_text_close(file)
}
else instance_create_layer(x,y,"Player",OTutorial)
audio_play_sound(Music,10,1)

/// @description Insert description here
// You can write your code in this editor
var reverse
if mouse_check_button(mb_right) reverse = 180
else reverse = 0
rev = reverse

x = OPlayer.x
y = OPlayer.y+2

image_angle = point_direction(x,y,mouse_x,mouse_y)+reverse
if (image_angle > 90 and image_angle < 270) or image_angle > 450{
	image_yscale = -1
	OPlayer.image_xscale = -1
}
else{
	image_yscale = 1
	OPlayer.image_xscale = 1
}



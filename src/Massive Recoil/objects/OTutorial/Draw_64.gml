/// @description Insert description here
// You can write your code in this editor
if scale < 29 scale ++
draw_sprite_stretched(STutorialBox,0,64,32,43*scale,24*scale)
if scale == 29{
	draw_sprite_stretched(bullet,0,192,214,192,24)
	draw_set_colour(c_black)
	draw_text_ext_transformed(189,288,text,20,320,3,3,0)
	draw_text_ext_transformed(195,288,text,20,320,3,3,0)
	draw_text_ext_transformed(192,285,text,20,320,3,3,0)
	draw_text_ext_transformed(192,291,text,20,320,3,3,0)
	draw_set_colour(c_white)
	draw_text_ext_transformed(192,288,text,20,320,3,3,0)
	if warp{
		warpframe ++
		draw_sprite_stretched(SWarpPoint,0,502,182,96,96)
	}
}

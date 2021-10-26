/// @description Insert description here
// You can write your code in this editor
if hascontrol{
	if mouse_check_button_pressed(mb_left) && canfire{
		canfire --
		recoil = 15
		audio_stop_sound(SShoot)
		audio_play_sound(SShoot,1,0)
		repeat(4){
			with(instance_create_layer(x,y,"Bullets",bullets)){
				speed = 25
				direction = other.image_angle+random_range(-2,2)
				image_angle = direction
			}
		}
		with OPlayer{
			dir = point_direction(mouse_x,mouse_y,other.x,other.y)+(180-other.rev)
			hsp = lengthdir_x(-1,dir)*15
			vsp = lengthdir_y(-1,dir)*15
		}
	}
	if mouse_check_button_pressed(mb_middle) and warp{
		audio_stop_sound(SWarpShoot)
		audio_play_sound(SWarpShoot,1,0)
		with(instance_create_layer(x,y,"Bullets",OWarpBullet)){
				speed = 25
				direction = other.image_angle
				image_angle = direction
			}
	}
}
if recoil > 0 recoil --
/// @description Insert description here
// You can write your code in this editor
with other{
	var layid = layer_tilemap_get_id("Destructible")
	tilemap_set_at_pixel(layid,0,x,y)
	instance_destroy()
}
instance_destroy()
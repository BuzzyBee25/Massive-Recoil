/// @description Insert description here
// You can write your code in this editor
var layid = layer_get_id("Destructible")
var tileid = layer_tilemap_get_id(layid)
layer_tilemap_destroy(tileid)
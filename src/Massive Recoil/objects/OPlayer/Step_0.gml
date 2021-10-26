/// @description Insert description here
// You can write your code in this editor
vsp += grv
hsp -= sign(hsp)*fric
if hsp<0.5 and hsp>-0.5 hsp = 0 

if place_meeting(x,y+vsp,OWall){
	if vsp > 0 OGun.canfire = OGun.maxshot
	while !place_meeting(x,y+sign(vsp),OWall) y+= sign(vsp)
	vsp = 0
	fric = 1
}
else if place_meeting(x,y+vsp,OWallBreak){
	if vsp > 0 OGun.canfire = OGun.maxshot
	while !place_meeting(x,y+sign(vsp),OWallBreak) y+= sign(vsp)
	vsp = 0
	fric = 1
}
else fric = 0.05
if vsp > 40 vsp = 40
if vsp < -40 vsp = -40

y += vsp

if place_meeting(x+hsp,y,OWall){
	while !place_meeting(x+sign(hsp),y,OWall) x+= sign(hsp)
	hsp = 0
}
else if place_meeting(x+hsp,y,OWallBreak){
	while !place_meeting(x+sign(hsp),y,OWallBreak) x+= sign(hsp)
	hsp = 0
}
x += hsp

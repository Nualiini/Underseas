if distance_to_object(plr) < 100 {
	aggro = true
}
if distance_to_object(plr ) > 100 && aggro{
	accel+=0.01

}	else {
		if accel > 0 {
			accel-=0.01
		}}
	if not place_meeting(x+lengthdir_x(accel,point_direction(x,y,plr.x,plr.y)),y,plr.collisions) {
	x+=lengthdir_x(accel,point_direction(x,y,plr.x,plr.y))
	}
	if not place_meeting(x,y+lengthdir_y(accel,point_direction(x,y,plr.x,plr.y)),plr.collisions) {
	y+=lengthdir_y(accel,point_direction(x,y,plr.x,plr.y))

	}
if place_meeting(x,y,BubleSpell) && iframes < 1 {
	audio_play_sound(hit_by_a_wood_230542,false,false)
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		flash=10
	}
	hp-=0.5
	iframes+=5

}
if place_meeting(x,y,attack) && iframes < 1 {
	audio_play_sound(hit_by_a_wood_230542,false,false)
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		flash=10
	}
	hp-=1
	if plr.hp > plr.water {
	plr.water+=0.5
	}
	iframes+=30
}

if iframes > 0 {
	iframes--
}
if flash > 0 {
	flash--
}
if hp < 1 && not dead {
	
	flash = 60
	dead = true
	spd = -0.5
}
if dead && flash < 1 {
	repeat 50{
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth + 1
		instance_destroy()

	
}
		repeat 15{
instance_create_layer(x,y,"Instances",ivikireM)
		}
}
if dead && flash > 0 {
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth - 1
	
}
}
if  not aggro && not floor(image_index) == 0 {
	image_speed = 0
} else {
		image_speed = 0.3
}
if image_index > 5 && image_index < 5.5 {
	instance_create_layer(x,y,"Instances",proj1)
}
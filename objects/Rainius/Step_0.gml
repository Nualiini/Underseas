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

}
if dead && flash < 1 {
	repeat 50{
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth + 1
		instance_destroy()

	
}
		repeat 5 {
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
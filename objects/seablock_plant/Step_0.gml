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
	iframes+=30
}
if dead && flash < 1 {
	repeat 50{
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth + 1
		instance_destroy()
		if targetl != 0 {
		layer_set_visible(targetl,to)
		if targetl == layer_get_id("secret") {
			global.broken1 = true
		}
		}
}

}
if dead && flash > 0 {
	repeat 5{
		instance_create_layer(x,y,"Instances",bubble)
		var _bubble = instance_create_layer(x,y,"Instances",bubble)
		_bubble.depth = self.depth - 1
	
}
}
if hp < 1 && not dead{
	dead = true
}
if flash > 0 {
	flash--
}
if iframes > 0 {
	iframes--
}
if hp < 3 {
hp+=0.05
}
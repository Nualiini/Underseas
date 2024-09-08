if not place_meeting(x,y+accel,collisions) {
		y+=accel
	onground = false
	if accel < 10{
	accel+=0.25
	}
} else {
	onground = true
	accel=0
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")) {
	if sprite_index == plr_spr {
	sprite_index = plr_spr_1
	}
	image_speed = 2
} else {
	image_speed = 0
	if floor(image_index) == 1 {
	image_index = 2
	}
	if floor(image_index) == 3 {
	image_index = 0
	}
}

if forceY != 0 {
	y+=forceY
	if forceY > 0 {
	forceY--
	}
	if forceY < 0 {
	forceY++
	}
}
if place_meeting(x,y,onedamages) && iframes < 1 {
	hp--
	iframes = 30
	if hp < 1 {
	iframes = 3000
	var _death = instance_create_layer(x,y,"Instances",death)
	_death.depth = self.depth-100
	}
	instance_create_layer(x,y,"Instances",shake)
}
if iframes > 0 {
	iframes--
}
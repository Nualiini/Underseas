if not place_meeting(x,y+accel,collisions)   {
		y+=accel
	onground = false
	if accel < 20{
	accel+=0.25
	}
} else {
	onground = true
	accel=0
}
if keyboard_check(ord("A")) or keyboard_check(ord("D")) {
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
	if not place_meeting(x,y+forceY,collisions) {
	y+=forceY
	} else {
	forceY = 0
	}
	if forceY > 0 {
	forceY--
	}
	if forceY < 0 {
	forceY++
	}
}

// BubleSpell Create
if keyboard_check_pressed(ord("1"))
{
	spd = 0
	alarm[1] = 34
	instance_create_layer(self.x,self.y,"instances",BubleSpell)
	instance_create_layer(self.x,self.y,"instances",shake)
}

// BubleSpell pose
if spd = 0
{
	sprite_index = plr_spr
}

if keyboard_check(vk_anykey) and spd != 0
{
	sprite_index = plr_spr_1
}
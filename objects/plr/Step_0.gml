if (!place_meeting(x, y + accel, collisions) &&!collision_rectangle(x-4,y+6,x+4,y+16,platforms,true,true)){
    if (instance_exists(BubleSpell) && sprite_index == plr_spr) {
        // Some code
    } else {
		if not position_meeting(x,y+accel,platforms){
        y += accel;
		
        onground = false;
        if (accel < 20) {
            accel += 0.25;
        }}
    }
}


 else {
	onground = true
	if not instance_exists(darkness) and not instance_exists(death) && not collision_rectangle(x-32,y-6,x+32,y+16,flame,false,false) && not place_meeting(x,y,nospawn) {
	global.safex = x
	global.safey = y
	}
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
if keyboard_check_pressed(ord("1")) && global.spell1
{
	audio_play_sound(boom_1_bright_attack_237005,false,false)
	spd = 0
	alarm[1] = 34
	instance_create_layer(self.x,self.y,"instances",BubleSpell)
	instance_create_layer(self.x,self.y,"instances",shake)
}

// BubleSpell pose
if instance_exists(BubleSpell)
{
	sprite_index = plr_spr
}

if keyboard_check(vk_anykey) and spd != 0
{
	sprite_index = plr_spr_1
}

// hack spawn enemy
if keyboard_check_pressed(vk_up)
{
	instance_create_layer(self.x,self.y,"instances",crab)
}
if place_meeting(x,y,onedamages) && iframes < 1 {
	hp--
	if water > hp {
	water = hp
	}
	instance_create_layer(x,y,"Instances",shake)
	iframes = 40
}
if iframes > 0 {iframes--}
if hp < 1 {
	iframes=300
	var _death = instance_create_layer(x,y,"dialogue",death)
	_death.depth = -1000000
	spd = 0
}
if place_meeting(x,y,hazards) {
hp--
instance_create_layer(x,y,"Instances",shake)
image_alpha = 0
x = global.safex
y = global.safey
}
if image_alpha < 1 {
	image_alpha+=0.02
}
if dmg && iframes < 1 {
	hp--
	if water > hp {
	water = hp
	}
	instance_create_layer(x,y,"Instances",shake)
	iframes = 40
}
if dmg {
	dmg = false
}
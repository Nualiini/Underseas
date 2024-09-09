accel = 0

if plr.image_xscale > 0 {
	image_xscale = 1.5
	image_angle = -56
	despawn = 56
ogdir = -1
} else {
	image_xscale = -1.5
	image_angle = 56
	despawn = -56
ogdir = 1
}
image_yscale = 1.25
changed = false

audio_play_sound(sword_sound_2_36274,false,false)
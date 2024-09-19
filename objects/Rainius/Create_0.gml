hp = 50
image_xscale = 2
image_yscale = 2
iframes = 0
flash = 0
dead = false
y-=64
fall = false
ogy = y
alarm[0] = 3 * 60
tofall = false
dir = 0
var wall = instance_create_layer(4480,3488,"Instances",seablock)
wall.image_yscale = 3
audio_stop_sound(Final_Blue)
instance_destroy(music1)
alarm[1] = 17.5 * 60
audio_play_sound(HeavyRain,100,false)
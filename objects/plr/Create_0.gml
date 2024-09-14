var _darkness =instance_create_layer(x,y,"dialogue",darkness)
_darkness.depth = self.depth-100
shakefx = layer_get_fx("ShakeLayer");
sprite_index = plr_spr
fx_set_parameter(shakefx, "g_Magnitude", 0);
fx_set_parameter(shakefx, "g_ShakeSpeed",0);
platforms = [seaplatform]
collisions = [seablock,seablock_breakable]
onedamages = [crab]
spd = 3
accel = 0
image_speed = 0
onground = false
forceY =  0
forceX =  0
hpoffset = 0
hp = 5
hpframe = 0
alarm[0] = 0.5 * 60
iframes = 0
audio_play_sound(cozy_soft_rain_under_umbrella_116183,false,true)

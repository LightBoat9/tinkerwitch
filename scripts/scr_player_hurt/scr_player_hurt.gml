/// @description scr_player_hurt
/// @param dmg
dmg = argument0;
obj_player.player_health -= dmg;
audio_play_sound(choose(snd_hurt_low,snd_hurt_med,snd_hurt_high),0,false);
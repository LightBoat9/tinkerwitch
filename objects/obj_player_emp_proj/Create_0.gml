//Destroy Event
destroy = false;
destTimer = room_speed / 3;

//Movement
vsp = 0;
hsp = 0;
scr_move_to(mouse_x, mouse_y, 20);
end_hsp = 0;
end_vsp = 0;
dest_solid = false;

//Subtract Mana
global.mana--;

//Sound
audio_play_sound(snd_emp_fire,0,false);
/// @description Global Variables

//Asnc and Antialiasing
display_reset(8,true);

//Persistent
persistent = true;

//Rooms
cur_room = room_get_name(room);
prev_room = room_get_name(room);

//Depth
global.depth_0 = 0;
global.depth_1 = -1;
global.depth_2 = -2;
global.depth_3 = -3;
global.depth_4 = -4;


/* Object Globals */
//obj_missile
global.missileAiming = false;
//obj_bot
global.bot_one = false;
global.bot_two = false;
global.bot_three = false;
global.bot_four = false;
global.bot_five = false;
global.bot_six = false;
global.bot_seven = false;
global.bot_eight = false;
//obj_player
/* Stats */
global.metal = 0;
global.mana = 24;
global.charge = 0;
global.cast_speed = 0.3;

/* Settings */
global.autojump = true;
global.pause = false;

//Saving
global.save_slot = 1;

//GUI
/* Sroll Wheel */
global.item_bar = 0;
global.item_name_timer = room_speed * 2; //How long the item bar shows object name
global.item_name_alpha = 1;
/* Item Bar Objects */
global.item_one_obj = obj_checkpoint;
global.item_two_obj = obj_item_block;
global.item_three_obj = 0;
global.item_four_obj = 0;
global.item_five_obj = 0;
/* All Item Objects */
global.has_item_missile = false;
global.has_item_checkpoint = true;
global.has_item_block = true;
/* Item Object Cooldowns */
global.item_missile_cool = 0;
global.item_checkpoint_cool = 0;
global.item_block_cool = 0;


/* 
 * Video Options 
 */
view_width = 1280;
view_height = 720;
 
//Fullscreen
global.fullscreen = true;
window_set_fullscreen(global.fullscreen);

//Particle Effects
global.particles = true;

//Testing Stuff
global.testing = false;

//Pause
global.pause_surface = 0;

//Music
//audio_play_sound(snd_bgm,0,true);
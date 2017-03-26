pause_timer = room_speed * 2;
hsp = 0;
vsp = 0;
grav = 1;
dir = irandom_range(0,1);

//Damage Box
inst_dmgBox = instance_create_depth(x,y,global.depth_2,obj_snail_king_dmgBox);
createDmgBox = false;

//Health
enemy_health = 1;
destroy = false;

state = "idle"
state_timer = room_speed * 2;
attack_type = "none";
fire_amount = 5;
roll_amount = 2;
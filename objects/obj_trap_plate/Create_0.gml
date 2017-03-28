//Coffin Spawn Coordinates
cof_x = 0;
cof_y = 0;
cof_dir = 0; //Coffin start direction

delay = room_speed; //Delay before triggering trap
trap_start = false; //When the trap is triggered

cof_inst = obj_trap_coffin;

sound = true; //Play a sound when stepped on

state = "once"
wait = false;
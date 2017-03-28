instance_create_depth(x,y,global.depth_1,obj_plains_solid);
instance_create_depth(x-32,y,global.depth_1,obj_plains_solid);

active = true; //Whether the portal is active or not
port = false; //When the player chooses to tp
room_target = room_next(room); //The room to goto when activated
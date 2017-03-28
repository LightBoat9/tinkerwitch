sol1 = instance_create_depth(x,y,0,obj_solid_move);
sol2 = instance_create_depth(x,y+32,0,obj_solid_move);

destroy = false;
state = "door1"

tar_number = instance_number(obj_target);
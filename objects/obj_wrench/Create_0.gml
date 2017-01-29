//Movement Vars
spd = 20;

//Move Towards Point
scr_move_to(mouse_x,mouse_y,spd);

//Change Image Angle
var dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = dir;

//Collision Var
collided = false;
returnTimer = room_speed / 2; //Time wrench sticks in wall

//Throw distance
distance = 16;
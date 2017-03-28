//Persistents
persistent = true;

//Movement
hsp = 0;
vsp = 0;
grav = 1;

if instance_exists(obj_checkpoint) {
	obj_checkpoint.destroy = true;
}

//Destroy event
destroy = false;

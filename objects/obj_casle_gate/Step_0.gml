//Wait for activation from the player
if active {
	if place_meeting(x,y,obj_player) {
		if keyboard_check_pressed(ord("E")) {
			if obj_player.grounded { //If player is grounded
				obj_player.move_manip = true; //Move the player
				port = true; //Activated
			}
		}
	}

	//After activated
	if port = true {
		//Removes checkpoints from room
		if instance_exists(obj_checkpoint) {
					obj_checkpoint.destroy = true;
		}
		obj_player.vsp -= 2; //Lift the player up
		obj_player.hsp = 0; //Stop the players horizontal movement
		if obj_player.y < y+46 { //Once the player gets to the middle of the portal teleport
			//Reset Wrench
			global.item_wrench = true;
			if (instance_exists(obj_wrench)) {
				obj_wrench.destroy = true;
			}
			port = false; //Stop porting to prevent loops
			room_goto(room_target); //Goto the target room
		}
	}
}
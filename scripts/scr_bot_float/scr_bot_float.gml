/// @description scr_bot_float();
/// @arg bot_id
bot_id = argument0;

switch bot_id {
	case 1: 
		if (point_distance(x, y, obj_player.x, obj_player.y - 48) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x, obj_player.y - 48, 5);
		} else {
			x = obj_player.x;
			y = obj_player.y - 48;
			speed = 0;
		}
		break;
	case 2:
		if (point_distance(x, y, obj_player.x + 48, obj_player.y - 48) > 5) {
	        image_angle = 0;
	        move_towards_point(obj_player.x + 48, obj_player.y - 48, 5);
	    } else {
	        x = obj_player.x + 48;
	        y = obj_player.y - 48;
	        speed = 0;
	    }
		break
	case 3:
		if (point_distance(x, y, obj_player.x + 48, obj_player.y) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x + 48, obj_player.y, 5);
		} else {
			x = obj_player.x + 48;
			y = obj_player.y;
			speed = 0;
		}
		break;
	case 4:
		if (point_distance(x, y, obj_player.x + 48, obj_player.y + 48) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x + 48, obj_player.y + 48, 5);
		} else {   
			x = obj_player.x + 48;
			y = obj_player.y + 48;
			speed = 0;
		}
		break;
	case 5:
		if (point_distance(x, y, obj_player.x, obj_player.y + 48) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x, obj_player.y + 48, 5);
		} else {
			x = obj_player.x;
			y = obj_player.y + 48;
			speed = 0;
		}
		break;
	case 6:
		if (point_distance(x, y, obj_player.x - 48, obj_player.y + 48) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x - 48, obj_player.y + 48, 5);
		} else {
			x = obj_player.x - 48;
			y = obj_player.y + 48;
			speed = 0;
		}
		break;
	case 7:
		if (point_distance(x, y, obj_player.x - 48, obj_player.y) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x - 48, obj_player.y, 5);
		} else {
			x = obj_player.x - 48;
			y = obj_player.y;
			speed = 0;
		}
		break;
	case 8:
		if (point_distance(x, y, obj_player.x - 48, obj_player.y - 48) > 5) {
			image_angle = 0;
			move_towards_point(obj_player.x - 48, obj_player.y - 48, 5);
		} else {
			x = obj_player.x - 48;
			y = obj_player.y - 48;
			speed = 0;
		}
		break;
}
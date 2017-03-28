//Depth
depth = global.depth_1;

//Use Sprite
draw_y = 32; //Hold the y position of the text/sprite
draw_max = 64; //Hold the max height the text/sprite gets
spr_alpha = 0; //Starting alpha for the sprite

//The Middle Cordinates
mid_x = x+16;
mid_y = y+16;
above_y = mid_y-(sprite_height); //Directly above

//Font Variables
padding = 16;
alpha = 0;

//Using or not
using = false;

//Whether the mouse is over the item bar
mouse_over_itembar = false;

/*
 * Whats in the book
 */
 
//String after purchase
purch_str = "DRAG TO ITEM BAR TO EQUIP"
 
//Missile
item_missile = true; //Whether the book contains this item
item_missile_cost = 80; //How much in charge this costs
move_item_missile = false; //Whether to move the missile scroll or not
var str = "Missile: Charge Cost: " + string(item_missile_cost); //Hover Text
if global.has_item_missile = false {
	item_missile_text = scr_scroll_book_text(str,2,x,y); // Hover text object
}
else {
	item_missile_text = scr_scroll_book_text(purch_str,2,x,y); // Hover text object
}
instance_deactivate_object(item_missile_text); //Deactivate the object

//Checkpoint
item_checkpoint = true; //Whether the book contains this item
item_checkpoint_cost = 120; //How much in charge this costs
move_item_checkpoint = false; //Whether to move the item scroll or not
var str = "Checkpoint: Charge Cost: " + string(item_checkpoint_cost); //Hover Text
if global.has_item_checkpoint = false {
	item_checkpoint_text = scr_scroll_book_text(str,2,x,y); // Hover text object
}
else {
	item_checkpoint_text = scr_scroll_book_text(purch_str,2,x,y); // Hover text object
}
instance_deactivate_object(item_checkpoint_text); //Deactivate the object
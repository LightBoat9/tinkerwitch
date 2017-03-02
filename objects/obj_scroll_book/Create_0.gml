mid_x = x+16;
mid_y = y+16;
above_y = mid_y-(sprite_height); //Directly above
padding = 16;
alpha = 0;
using = false;
depth = -100;

mouse_over_itembar = false;

/*
 * Whats in the book
 */
 
//String after purchase
purch_str = "DRAG TO ITEM BAR TO EQUIP"
 
//Missile
item_missile = true; //Whether the book contains this item
item_missile_cost = 80; //How much in charge this costs
move_item_missile = false;
var str = "Missile: Charge Cost - " + string(item_missile_cost); //Hover Text
item_missile_text = scr_scroll_book_text(str,2,x,y); // Hover text object
instance_deactivate_object(item_missile_text); //Deactivate the object
draw_self();
//Draw based on value of metal
if metal_val = 2 {
	sprite_index = spr_metal_low;
}
else if metal_val = 4 {
	sprite_index = spr_metal_mid;
}
else if metal_val = 8 {
	sprite_index = spr_metal_high;
}
else if metal_val = 12 {
	sprite_index = spr_metal_max;
}
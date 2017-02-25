/*Creation Code*/

/***********************************************
 * For drawing text
draw_txt = true;
draw_max = maxy; //Can be left (default 40) if so DELETE THIS
text = "";

 * For drawing sprites
draw_spr = true;
draw_max = maxy; //Can be left (default 40) if so DELETE THIS
sprite = spr_;
**********************************************/

read = false; //Whether the sign has been read once
draw_txt = false; //Whether to draw text or sprite
draw_spr = false; //Whether to draw text or sprite
draw_y = 0; //Hold the y position of the text/sprite
draw_max = 40; //Hold the max height the text/sprite gets
alpha = 0; //Starting alpha for the sprite
text = ""; //Text to draw
sprite = spr_solid; //Sprite to draw (default is a pink block)
inst_sign_text = scr_sign_text(text,2,x,y);
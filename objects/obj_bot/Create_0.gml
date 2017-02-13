//The bots ID
bot_open = scr_bot_cycle();
if bot_open != 0 {
	bot_id = bot_open;
	scr_bot_make(bot_open);
}

//Skill
skill = 1;

//Destroy Event
destroy = false
image_speed = 0.5;

if(keyboard_check(ord("A")))
{
	phy_position_x = phy_position_x - 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = 1;
}
else if(keyboard_check(ord("D")))
{
	phy_position_x = phy_position_x + 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = -1;
}
else if(keyboard_check(ord("W")))
{
	phy_position_y = phy_position_y - 4;
	sprite_index = spr_Usera_walk_back;
}
else if(keyboard_check(ord("S")))
{
	phy_position_y = phy_position_y + 4;
	sprite_index = spr_Usera_walk_front;
}
image_speed = 0.5;
//Movement Control
if(m_isAttacking == false && m_isInSkill == false){
if(keyboard_check(ord("A")))
{
	phy_position_x = phy_position_x - 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = 1;
	m_Player_Direction = Player_Direction.left;
}
else if(keyboard_check(ord("D")))
{
	phy_position_x = phy_position_x + 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = -1;
	m_Player_Direction = Player_Direction.right;
}
else if(keyboard_check(ord("W")))
{
	phy_position_y = phy_position_y - 4;
	sprite_index = spr_Usera_walk_back;
	m_Player_Direction = Player_Direction.up;
}
else if(keyboard_check(ord("S")))
{
	phy_position_y = phy_position_y + 4;
	sprite_index = spr_Usera_walk_front;
	m_Player_Direction = Player_Direction.down;
}
else if(keyboard_check(ord("J")))
{
	m_isAttacking = true;
	switch(m_Player_Direction){
	case Player_Direction.up:
		sprite_index = spr_Usera_attack_back;
		break;
	case Player_Direction.down:
		sprite_index = spr_Usera_attack_front;
		break;
	case Player_Direction.left:
		sprite_index = spr_Usera_attack_side;
		break;
	case Player_Direction.right:
		sprite_index = spr_Usera_attack_side;
		break;
	}
	image_index = 0;
}
else if(keyboard_check(ord("K")))
{
	m_isInSkill = true;
	sprite_index = spr_Usera_skill1;
	image_index = 0;
}
else{
	sprite_index = spr_Usera_idle;
	image_index = 0;
}
}
//Attack Control
/*
if(keyboard_check(ord("J"))){
	m_isAttacking = true;
	switch(m_Player_Direction){
	case Player_Direction.up:
		sprite_index = spr_Usera_attack_back;
		break;
	case Player_Direction.down:
		sprite_index = spr_Usera_attack_front;
		break;
	case Player_Direction.left:
		sprite_index = spr_Usera_attack_side;
		break;
	case Player_Direction.right:
		sprite_index = spr_Usera_attack_side;
		break;
	}
	image_index = 0;
}
else if(keyboard_check(ord("K"))){
	m_isInSkill = true;
	sprite_index = spr_Usera_skill1;
	image_index = 0;
}*/
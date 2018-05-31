image_speed = 0.5;

if(!m_isAttacking && !m_isInSkill){
if(keyboard_check(ord("J")))
{
	m_isAttacking = true;
	switch (m_playerDiection){
	case PlayerDirection.UP:
		sprite_index = spr_usera_attack_back;	
		break;
	case PlayerDirection.DOWN:
		sprite_index = spr_usera_attack_front;	
		break;
	case PlayerDirection.LEFT:
		sprite_index = spr_usera_attack_side;	
		break;
	case PlayerDirection.RIGHT:
		sprite_index = spr_usera_attack_side;	
		break;
	}
	image_index = 0;
}
else if(keyboard_check(ord("K")))
{
	m_isInSkill = true;
	sprite_index = spr_usera_skill01;
	image_index = 0;
}
else if(keyboard_check(ord("A")))
{
	phy_position_x = phy_position_x - 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = 1;
	m_playerDiection = PlayerDirection.LEFT;
}
else if(keyboard_check(ord("D")))
{
	phy_position_x = phy_position_x + 4;
	sprite_index = spr_Usera_walk_side;
	image_xscale = -1;
	m_playerDiection = PlayerDirection.RIGHT;
}
else if(keyboard_check(ord("W")))
{
	phy_position_y = phy_position_y - 4;
	sprite_index = spr_Usera_walk_back;
	m_playerDiection = PlayerDirection.UP;
}
else if(keyboard_check(ord("S")))
{
	phy_position_y = phy_position_y + 4;
	sprite_index = spr_Usera_walk_front;
	m_playerDiection = PlayerDirection.DOWN;
}

else{
	sprite_index = spr_Usera_idle;
}
}
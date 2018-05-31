image_speed = 0.5;

if(!m_isAttacking && !m_isInSkill){
if(keyboard_check(ord("J")))
{
	//攻击动作前置，可以避免行走时不会触发攻击动作的问题
	m_isAttacking = true;
	//重置开火状态
	m_fired = false;
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
	m_fired = false;
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

//动画生成
if(sprite_index == spr_usera_attack_back||
	sprite_index == spr_usera_attack_front||
	sprite_index == spr_usera_attack_side){
		if(image_index > 2 && !m_fired){
			var magicBullet = instance_create_layer(phy_position_x,phy_position_y,"Instances",obj_usera_bullet);
			var delta_x = 0;
			var delta_y = 0;
			m_fired = true;
			switch(m_playerDiection){
			case PlayerDirection.UP:
				magicBullet.m_speedY = -10;
				magicBullet.phy_rotation = 90;
				delta_y = -86;
				break;
			case PlayerDirection.DOWN:
				magicBullet.m_speedY = 10;
				magicBullet.phy_rotation = 270;
				delta_y = 9;
				break;
			case PlayerDirection.LEFT:
				magicBullet.m_speedX = -10;
				magicBullet.phy_rotation = 0;
				delta_x = -65;
				delta_y	= -32;
				break;
			case PlayerDirection.RIGHT:
				magicBullet.m_speedX = 10;
				magicBullet.phy_rotation = 180;
				delta_x = 65;
				delta_y = -32;
				break;
			}
			magicBullet.phy_position_x += delta_x;
			magicBullet.phy_position_y += delta_y;
		}
	}
	
if(sprite_index == spr_usera_skill01){
	if(image_index > 2 && !m_fired){
		instance_create_layer(x,y,"Instances",obj_usera_skill01_effect);
		m_fired = true;
	}
}



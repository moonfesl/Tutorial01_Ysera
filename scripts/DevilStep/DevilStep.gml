image_speed = 0.5;

//死亡判断,返回0就不会再执行下面的移动代码

if(m_isDead)
	return 0;

if(m_hp == 0){
	m_isDead = true;
	sprite_index = spr_devil_die;
	return 0;
}



if(!m_isAttacking && !m_isInSkill){
	var player = instance_find(obj_Usera, 0);
	
	var delta_x = player.x - x;
	var delta_y	= player.y - y;
	
	var mySpeed = 2;
	if(delta_x > mySpeed){
		phy_position_x += mySpeed;
	}
	else if(delta_x < -mySpeed){
		phy_position_x -= mySpeed;
	}
	else{
		phy_position_x += delta_x;
	}
	
	if(delta_y > mySpeed){
		phy_position_y += mySpeed;
	}
	else if(delta_y < -mySpeed){
		phy_position_y -= mySpeed;
	}
	else{
		phy_position_y += delta_y;
	}
}

//动画方向控制
if(delta_x > 0){
	image_xscale = -1;
}
else if(delta_x < 0){
	image_xscale = 1;
}
sprite_index = spr_devil_walk;




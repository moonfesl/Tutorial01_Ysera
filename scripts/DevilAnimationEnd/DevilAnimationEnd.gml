if(m_isAttacking && (sprite_index == spr_devil_attack)){
	m_isAttacking = false;
}
if(m_isInSkill && sprite_index == spr_usera_skill01){
	m_isInSkill = false;
}

if(m_isDead){
	image_speed = 0;
	image_index = image_number - 1;
}
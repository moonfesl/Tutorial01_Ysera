if(m_isAttacking && (
	sprite_index == spr_usera_attack_back||
	sprite_index == spr_usera_attack_front||
	sprite_index == spr_usera_attack_side)){
		m_isAttacking = false;
	}
if(m_isInSkill && sprite_index == spr_usera_skill01){
	m_isInSkill = false;
}
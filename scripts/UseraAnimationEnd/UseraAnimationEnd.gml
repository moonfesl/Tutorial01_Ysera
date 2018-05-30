if(m_isAttacking && 
	(  sprite_index == spr_Usera_attack_side
	|| sprite_index == spr_Usera_attack_back
	|| sprite_index == spr_Usera_attack_front)){
		m_isAttacking = false;
	}
if(m_isInSkill && sprite_index == spr_Usera_skill1){
	m_isInSkill = false;
}
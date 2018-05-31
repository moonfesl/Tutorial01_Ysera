phy_fixed_rotation = 1;

m_playerDiection = PlayerDirection.DOWN;

//initial control var
m_isAttacking = false;
m_isInSkill = false;
m_fired = false;

//生成碰撞盒
m_attachedHitbox = instance_create_layer(x,y,"Instances",obj_hitbox);
m_attachedHitbox.m_attachedParent = id;

//生成初始化属性
m_hp = 2;
m_isDead = false;
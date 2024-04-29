extends CharacterBody2D

func _physics_process(delta):
	#Premendo UP, il paddle destro si muove in alto
	if Input.is_key_pressed(KEY_UP)and position.y>300:
		position.y -= 25
	#Premendo DOWN, il paddle destro si muove in basso
	if Input.is_key_pressed(KEY_DOWN) and position.y<5600:
		position.y += 25

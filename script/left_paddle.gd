extends CharacterBody2D

func _physics_process(delta):
	#Premendo W, il paddle sinistro si muove in alto
	if Input.is_key_pressed(KEY_W) and position.y>300:
		position.y -= 25
	#Premendo S, il paddle sinistro si muove in basso
	if Input.is_key_pressed(KEY_S) and position.y<5600:
		position.y += 25
	

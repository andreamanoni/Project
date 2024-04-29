extends CharacterBody2D

var collision_data
#Velocità iniziale come vettore bidimensionale
var _initial_velocity= Vector2(-150,50)
#Posizione iniziale della palla, al centro
@onready var _initial_pos = position

func _ready():
	velocity = _initial_velocity
func _process(delta):
	#La palla inizia a muoversi e rileva ripetutamente se c'è una collisione con il floor o ceiling
	collision_data = move_and_collide(velocity * delta)
	#Se c'è collisione, rimbalza
	if collision_data:
		velocity = velocity.bounce(collision_data.get_normal())

#funzione collegata alla collisione della palla con i due confini laterali
func _on_wall_body_entered(body):
	position = _initial_pos
	velocity=_initial_velocity

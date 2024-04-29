extends CharacterBody2D

var dir
var collision_data
var _initial_velocity= Vector2(-150,50)
@onready var _initial_pos = position

func _ready():
	velocity = _initial_velocity
func _process(delta):
	collision_data = move_and_collide(velocity * delta)
	if collision_data:
		velocity = velocity.bounce(collision_data.get_normal())


func _on_wall_body_entered(body):
	position = _initial_pos
	velocity=_initial_velocity

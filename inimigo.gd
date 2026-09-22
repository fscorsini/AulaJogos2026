extends CharacterBody2D


const SPEED = 700.0
var direction = -1

func _physics_process(delta: float) -> void:
	# Tratamento da gravidade
	if not is_on_floor():
		velocity += get_gravity() * delta


	# Movimento horizontal do personagem
	velocity.x = direction * SPEED * delta
	

	move_and_slide()

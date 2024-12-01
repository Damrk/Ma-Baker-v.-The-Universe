extends CharacterBody2D

@export var speed = 100
@export var gravity = 2500

func _process(delta: float) -> void:
	var move = Input.get_vector("left", "right", "up", "down")
	if move:
		velocity = move * speed
	else:
		velocity = Vector2.ZERO
	move_and_slide()

func _physics_process(delta):
	velocity.y += gravity * delta
	move_and_slide()

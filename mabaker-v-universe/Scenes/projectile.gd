extends Area2D

@export var speed = 1000

func _process(delta: float) -> void:
	translate(Vector2.RIGHT * speed * delta)

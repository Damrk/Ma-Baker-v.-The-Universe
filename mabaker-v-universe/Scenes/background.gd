extends Node2D


func _process(delta: float) -> void:
	translate(Vector2.LEFT * 20 * delta)

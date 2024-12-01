extends Area2D

var speed = 200
const EXPLOSION = preload("res://Scenes/explosion.tscn")

func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
	position.y += cos(position.x * delta) * 5


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Projectile"):
		var explosion = EXPLOSION.instance()
		explosion.global_position = global_position
		add_sibling(explosion)
		queue_free()
		

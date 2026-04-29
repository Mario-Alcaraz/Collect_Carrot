extends Area2D

func _ready() -> void:
	$AnimatedSprite2D.play("Carrot")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		Global.contador_zanahorias += 1
		print("Registro actualizado - Total de zanahorias: ", Global.contador_zanahorias)
		queue_free()

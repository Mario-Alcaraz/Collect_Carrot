extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		# Vuelve al inicio o pantalla final
		get_tree().change_scene_to_file("res://lvl_1.tscn")

func _on_area_2d_2_body_entered(body): quitar_vida(body)

func quitar_vida(body: Node2D):
	if body.is_in_group("player"):
		Global.salud_actual -= 0.5
		if body.has_method("recibir_daño"):
			body.recibir_daño()

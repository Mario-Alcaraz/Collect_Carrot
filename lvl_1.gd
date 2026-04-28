extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://lvl_2.tscn")

func _on_area_2d_2_body_entered(body: Node2D): quitar_vida(body)
func _on_area_2d_3_body_entered(body: Node2D): quitar_vida(body)
func _on_area_2d_4_body_entered(body: Node2D): quitar_vida(body)
func _on_area_2d_5_body_entered(body: Node2D): quitar_vida(body)

func quitar_vida(body: Node2D):
	if body.is_in_group("player"):
		Global.salud_actual -= 1
		if Global.salud_actual <= 0:
			get_tree().change_scene_to_file("res://menu_muerte.tscn")

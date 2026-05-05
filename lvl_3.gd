extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://lvl_4.tscn")

func _on_area_2d_2_body_entered(body): quitar_vida(body)
func _on_area_2d_3_body_entered(body): quitar_vida(body)
func _on_area_2d_4_body_entered(body): quitar_vida(body)
func _on_area_2d_5_body_entered(body): quitar_vida(body)
func _on_area_2d_6_body_entered(body): quitar_vida(body)
func _on_area_2d_7_body_entered(body): quitar_vida(body)
func _on_area_2d_8_body_entered(body): quitar_vida(body)
func _on_area_2d_9_body_entered(body): quitar_vida(body)
func _on_area_2d_10_body_entered(body): quitar_vida(body)
func _on_area_2d_11_body_entered(body): quitar_vida(body)
func _on_area_2d_12_body_entered(body): quitar_vida(body)
func _on_area_2d_13_body_entered(body): quitar_vida(body)
func _on_area_2d_14_body_entered(body): quitar_vida(body)
func _on_area_2d_15_body_entered(body): quitar_vida(body)
func _on_area_2d_16_body_entered(body): quitar_vida(body)
func _on_area_2d_17_body_entered(body): quitar_vida(body)
func _on_area_2d_18_body_entered(body): quitar_vida(body)

func quitar_vida(body: Node2D):
	if body.is_in_group("player"):
		Global.salud_actual -= 0.5
		if body.has_method("recibir_daño"):
			body.recibir_daño()

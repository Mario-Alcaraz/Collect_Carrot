extends Node2D

func _on_volver_pressed() -> void:
	Global.contador_zanahorias = 0
	Global.salud_actual = 6         # Importante: resetear a 6
	get_tree().change_scene_to_file("res://menu_principal.tscn")


func _on_salir_pressed() -> void:
	get_tree().quit()

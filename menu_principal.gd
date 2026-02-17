extends Node2D




func _on_jugar_pressed() -> void:
	get_tree().change_scene_to_file("res://lvl_1.tscn")


func _on_controles_pressed() -> void:
	get_tree().change_scene_to_file("res://menu_controles.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()

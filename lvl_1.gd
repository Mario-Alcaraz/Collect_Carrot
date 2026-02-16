extends Node2D


func _on_area_2d_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://lvl_2.tscn")


func _on_area_2d_2_body_entered(_body: Node2D) -> void: 	
	get_tree().change_scene_to_file("res://lvl_1.tscn")


func _on_area_2d_3_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://lvl_1.tscn")


func _on_area_2d_4_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://lvl_1.tscn")


func _on_area_2d_5_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_file("res://lvl_1.tscn")

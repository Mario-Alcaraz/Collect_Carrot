extends Node2D

# --- LÓGICA DE NAVEGACIÓN DEL MENÚ ---

func _on_jugar_pressed() -> void:
	# RESETEO DE PERSISTENCIA: Limpia el contador global antes de iniciar la sesión
	Global.contador_zanahorias = 0
	
	# Transición al primer nivel del proyecto
	get_tree().change_scene_to_file("res://lvl_1.tscn")

func _on_controles_pressed() -> void:
	# Transición a la interfaz de configuración de periféricos/controles
	get_tree().change_scene_to_file("res://menu_controles.tscn")

func _on_salir_pressed() -> void:
	# Cierre seguro de la instancia de la aplicación
	get_tree().quit()

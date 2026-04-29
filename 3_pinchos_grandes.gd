extends Node2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	# AÑADIDO: Verificación de grupo y resta de vida
	if body.is_in_group("player"):
		Global.salud_actual -= 1
		
		# Solo cambia de escena si el Global detecta que la vida llegó a 0
		# (Esto ya lo hace el script del Player, así que no hace falta ponerlo aquí)

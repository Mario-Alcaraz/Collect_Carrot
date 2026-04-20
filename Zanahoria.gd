extends Area2D

# --- INICIALIZACIÓN DE LA INSTANCIA ---
func _ready() -> void:
	# Inicia la animación automáticamente al cargar la zanahoria en la escena
	$AnimatedSprite2D.play("Carrot")

# --- GESTIÓN DE INTERACCIÓN Y RECOLECCIÓN ---
func _on_body_entered(body: Node2D) -> void:
	# Verificación de identidad mediante el grupo "player"
	if body.is_in_group("player"):
		# Incremento del registro de datos en el Singleton Global
		Global.contador_zanahorias += 1
		
		# Feedback en consola
		print("Registro actualizado - Total de zanahorias: ", Global.contador_zanahorias)
		
		# Eliminación de la instancia para liberar memoria
		queue_free()

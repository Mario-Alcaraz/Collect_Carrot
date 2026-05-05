extends Area2D # Asegúrate de que el nodo raíz de tus pinchos sea un Area2D

var daño = 0.5 
var puede_hacer_daño = true

func _ready() -> void:
	# Nos aseguramos de que la señal esté conectada por código
	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and puede_hacer_daño:
		# Si esto sale en la consola, el script está funcionando
		print("Pinchos tocados. Salud actual: ", Global.salud_actual)
		
		Global.salud_actual -= daño
		puede_hacer_daño = false
		
		if body.has_method("recibir_daño"):
			body.recibir_daño() # Esto activa tu animación "tope guapa"
		
		# Esperamos 1 segundo para que no te quite vida 60 veces por segundo
		await get_tree().create_timer(1.0).timeout
		puede_hacer_daño = true

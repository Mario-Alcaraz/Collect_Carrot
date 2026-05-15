extends CanvasLayer

@onready var continuar = $TextureRect/VBoxContainer/Continuar
@onready var reiniciar = $TextureRect/VBoxContainer/Reiniciar
@onready var salir = $TextureRect/VBoxContainer/SalirMenu

func _ready():
	# IMPORTANTE: Esto permite que el menú funcione aunque el juego esté pausado
	process_mode = Node.PROCESS_MODE_ALWAYS

#Empezar totalmente oculto
	hide()
	get_tree().paused = false

#Conexiones de botones
	continuar.pressed.connect(_on_continuar_pressed)
	reiniciar.pressed.connect(_on_reiniciar_pressed)
	salir.pressed.connect(_on_salir_pressed)

func _unhandled_input(event):
	# Si pulsas la tecla de pausa
	if event.is_action_pressed("Pausa"):
		# Si estamos en el menú principal, NO HACER NADA
		# Asegúrate de que el nodo raíz de tu menú se llame "MenuPrincipal"
		if get_tree().current_scene.name == "MenuPrincipal":
			return

		alternar_pausa()

func alternar_pausa():
	# Invertir estado de pausa
	var nuevo_estado = !get_tree().paused
	get_tree().paused = nuevo_estado
	visible = nuevo_estado

func _on_continuar_pressed():
	alternar_pausa()

func _on_reiniciar_pressed():
	get_tree().paused = false
	hide()
	get_tree().reload_current_scene()

func _on_salir_pressed():
	get_tree().paused = false
	hide()
	# Cambia esto a la ruta REAL de tu archivo
	get_tree().change_scene_to_file("res://menu_principal.tscn")

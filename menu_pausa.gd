extends CanvasLayer

@onready var Menu = $Menu
@onready var boton_continuar = $TextureRect/VBoxContainer/Continuar
@onready var boton_salir = $TextureRect/VBoxContainer/SalirMenu
@onready var boton_reiniciar = $TextureRect/VBoxContainer/Reiniciar

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS 
	layer = 128  
	hide() 
	
	boton_continuar.pressed.connect(_on_continuar_pressed)
	boton_salir.pressed.connect(_on_salir_pressed)
	boton_reiniciar.pressed.connect(_on_reiniciar_pressed)

func _unhandled_input(event):
	if event.is_action_pressed("Pausa"):
		if get_tree().current_scene.name == "MenuPrincipal":
			return
		alternar_pausa()

func alternar_pausa():
	get_tree().paused = !get_tree().paused
	visible = get_tree().paused
	
	if visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		Menu.play()
	else:
		Menu.stop()

func _on_continuar_pressed():
	alternar_pausa()

func _on_reiniciar_pressed():
	Menu.stop()
	get_tree().paused = false
	hide()
	get_tree().reload_current_scene()
	
func _on_salir_pressed():
	Menu.stop()
	get_tree().paused = false
	hide()
	get_tree().change_scene_to_file("res://menu_principal.tscn")

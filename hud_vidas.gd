extends CanvasLayer

# Estas rutas deben ser EXACTAS según tus archivos
var tex_lleno = preload("res://Corazon/Corazon.png")
var tex_medio = preload("res://Corazon/Medio_heart.png")
var tex_vacio = preload("res://Corazon/Without_Heart.png")

@onready var corazones = [
	$Control/HBoxContainer/TextureRect,
	$Control/HBoxContainer/TextureRect2,
	$Control/HBoxContainer/TextureRect3
]

func _process(_delta):
	var salud = Global.salud_actual
	
	for i in range(3):
		var valor_corazon = salud - (i * 2)
		
		if valor_corazon >= 2:
			corazones[i].texture = tex_lleno
		elif valor_corazon == 1:
			corazones[i].texture = tex_medio
		else:
			corazones[i].texture = tex_vacio

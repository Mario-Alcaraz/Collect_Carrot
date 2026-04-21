extends CanvasLayer

# Referencia al texto del contador
@onready var label_numero = $Contador/Label

func _process(_delta):
	# Esto actualiza el número en pantalla usando nuestra variable Global
	label_numero.text = str(Global.contador_zanahorias)

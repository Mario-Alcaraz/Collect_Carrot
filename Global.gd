extends Node

var contador_zanahorias : int = 0
var salud_actual : int = 6: # 6 equivale a 3 corazones llenos
	set(valor):
		# Si el nuevo valor es menor, activamos la reacción del player
		if valor < salud_actual:
			var player = get_tree().get_first_node_in_group("player")
			if player and player.has_method("recibir_daño"):
				player.recibir_daño()
		
		salud_actual = valor

func reiniciar_partida():
	contador_zanahorias = 0
	salud_actual = 6

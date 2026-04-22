extends Node

var contador_zanahorias : int = 0
var salud_actual : int = 6  # 6 equivale a 3 corazones llenos (2 puntos por corazón)

func reiniciar_partida():
	contador_zanahorias = 0
	salud_actual = 6

extends Node2D


var alive = true

signal death;

func initiate_death(body):
	if alive == true:
		death.emit()
		alive = false



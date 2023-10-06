extends Node

signal health_changed

var laser_amount = 20
var grenade_amount = 2
var health = 60:
	set(value):
		health = value
		health_changed.emit()

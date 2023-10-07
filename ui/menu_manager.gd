class_name MenuManager
extends MarginContainer

signal menu_opened
signal menu_closed
signal all_menus_closed

var menus : Array[Node]
var current : Node
var last : Node
var parent : Node


func close():
	current.queue_free()
	menu_closed.emit()
	if last:
		current = last
	else:
		current = null

	if menus.is_empty():
		last = null
	else:
		last = menus.pop_back()


func close_all():
	# This could be more efficient by storing them all in one node to delete
	# If we take that approach then we might end up with more orphans
	for cur_menu in menus:
		cur_menu.queue_free()
	current = null
	last = null
	all_menus_closed.emit()


func open(new_menu: Node):
	if current:
		last = current
	current = new_menu
	menus.push_back(new_menu)
	self.add_child(new_menu)
	menu_opened.emit()

func _ready():
	pass

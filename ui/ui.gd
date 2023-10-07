extends CanvasLayer

@onready var menus_container = %MenuContainer
@onready var ui_container = %MainUIContainer

signal ui_changed

func _ready():
	ui_changed.emit()
	pass

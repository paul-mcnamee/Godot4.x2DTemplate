extends Node

@onready var uuid: UUID = UUID.new()

# TODO: should include defaults here for a nice color palatte so it is consistent.
var colors: Dictionary = {
	dark_green = Color("#3D5220")
}

func _ready():
	print ("globals uuid = ", uuid.as_string())

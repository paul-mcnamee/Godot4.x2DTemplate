extends Node2D

@export var game_scene:PackedScene
@export var settings_scene:PackedScene

@onready var continue_button := %ContinueButton
@onready var new_game_button := %NewGameButton
@onready var settings_button := %SettingsButton
@onready var exit_button := %ExitButton

var next_scene = game_scene
var new_game = true

func _ready() -> void:
	new_game_button.disabled = game_scene == null
	settings_button.disabled = settings_scene == null
	continue_button.visible = SaveGame.has_save() and SaveGame.ENABLED

	# connect signals
	new_game_button.pressed.connect(_on_play_button_pressed)
	continue_button.pressed.connect(_on_continue_button_pressed)
	settings_button.pressed.connect(_on_settings_button_pressed)
	exit_button.pressed.connect(_on_exit_button_pressed)

	if continue_button.visible:
		continue_button.grab_focus()
	else:
		new_game_button.grab_focus()

func start_next_scene(scene: PackedScene):
	next_scene = scene
	if new_game and SaveGame.has_save():
		SaveGame.delete_save()
	get_tree().change_scene_to_packed(next_scene)

func _on_settings_button_pressed() -> void:
	new_game = false
	start_next_scene(settings_scene)

func _on_play_button_pressed() -> void:
	start_next_scene(game_scene)

func _on_continue_button_pressed() -> void:
	new_game = false
	start_next_scene(game_scene)

func _on_exit_button_pressed() -> void:
	get_tree().quit()

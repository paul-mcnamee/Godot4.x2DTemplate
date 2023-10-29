extends Node

signal scene_transition_started
signal scene_transition_finished

@export var StartingSplashLogo:PackedScene
@export var MainMenu:PackedScene
@export var MainSettings:PackedScene # TODO: this should probably be a part of the UI and not be loaded here
@export var Game:PackedScene

# Might want to adapt some of the method mentioned in the comments
# https://ask.godotengine.org/49360/looking-for-the-best-way-to-handle-multiple-scenes

var current_scene = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1)

func goto_scene(scene: PackedScene):
	goto_scene_path(scene.resource_path)

func goto_scene_path(path: String):
	# This function will usually be called from a signal callback,
	# or some other function in the current scene.
	# Deleting the current scene at this point is
	# a bad idea, because it may still be executing code.
	# This will result in a crash or unexpected behavior.

	# The solution is to defer the load to a later time, when
	# we can be sure that no code from the current scene is running:

	call_deferred("_deferred_goto_scene", path)


func _deferred_goto_scene(path):
	scene_transition_started.emit()
	TransitionLayer.player.play("fade_to_black")
	await TransitionLayer.player.animation_finished
	# It is now safe to remove the current scene
	current_scene.free()

	# Load the new scene.
	var s = ResourceLoader.load(path)

	# Instance the new scene.
	current_scene = s.instantiate()

	# Add it to the active scene, as child of root.
	get_tree().root.add_child(current_scene)

	# Optionally, to make it compatible with the SceneTree.change_scene_to_file() API.
	get_tree().current_scene = current_scene
	TransitionLayer.player.play_backwards("fade_to_black")
	await TransitionLayer.player.animation_finished
	scene_transition_finished.emit()

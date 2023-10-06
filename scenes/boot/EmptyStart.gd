extends Node2D

func _ready() -> void:
	var _tree = get_tree().current_scene
	await get_tree().create_timer(2.0).timeout
	await SceneManager.goto_scene(SceneManager.StartingSplashLogo)
	await get_tree().create_timer(2.0).timeout
	await SceneManager.goto_scene(SceneManager.MainMenu)

extends Control

@export var toasts_container: Container
@export var full_screen_container: Container
@export var center_screen_container: Container

@export var toast_notification: PackedScene

func _ready():
	for i in range(7):
		var tween = create_tween()
		tween.tween_callback(create_toast)

		var tween2 = create_tween()
		await tween2.tween_interval(2).finished

func create_toast():
		toasts_container.add_child(toast_notification.instantiate())


# show/hide the toasts container
func _on_texture_button_pressed() -> void:
	toasts_container.visible = !toasts_container.visible


func _on_visibility_changed() -> void:
	pass
	# TODO: add animations
	# if visible:
		# play the animation for flying in
	# else:
		# play the animation for flying out

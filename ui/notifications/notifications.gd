extends Control

@export var toasts_container: Container
@export var full_screen_container: Container
@export var center_screen_container: Container

@export var toast_notification: PackedScene

func _ready():
	for i in range(1):
		var tween = create_tween()
		tween.tween_callback(create_toast)

		var tween2 = create_tween()
		await tween2.tween_interval(2).finished
		# toasts_container.add_child(toast_notification.instantiate())
		# await tween.tween_interval(2).finished
		# toasts_container.add_child(toast_notification.instantiate())
		# await tween.tween_interval(7).finished
		# toasts_container.add_child(toast_notification.instantiate())
		# await tween.tween_interval(10).finished
		# toasts_container.add_child(toast_notification.instantiate())
		# await tween.tween_interval(2).finished

func create_toast():
		toasts_container.add_child(toast_notification.instantiate())

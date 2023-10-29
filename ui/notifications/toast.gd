extends BaseNotification

func _on_toast_notification_button_pressed() -> void:
	# TODO: ideally there would be an animation here
    queue_free()

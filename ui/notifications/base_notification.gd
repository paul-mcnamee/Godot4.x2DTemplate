extends MarginContainer
class_name BaseNotification

# const FADE_IN_DELAY_SEC: float = 1.0
# const DISPLAY_DURATION_SEC: float = 2.0
# const FADE_OUT_DELAY_SEC: float = 1.0

@export var animation: AnimationPlayer # this should play automatically

func _ready() -> void:

	# TODO: add to the UI and Notifications groups -- think this can probably be done in the editor but not sure which is better

		# probably better to just use animations since they are so powerful
		# var tween = get_tree().create_tween()
		# tween.tween_property(self, "modulate", 1, FADE_IN_DELAY_SEC)
		# await tween.tween_interval(DISPLAY_DURATION_SEC).finished
		# tween.tween_property(self, "modulate", 0, FADE_OUT_DELAY_SEC)
		# tween.tween_callback(queue_free)
		pass

#  queue free at the end

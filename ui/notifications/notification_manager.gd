extends MarginContainer

# multiple scenes for each type of notification

# each notification scene should inherit a BaseNotification class:
# 	timers before, during, after each phase
# 	text/iamges to display
# 	can leverage animations calling different methods and what not, those are pretty powerful and would work well here.

# types of notifications to display
# 	full screen, top, bottom, left, right, corners, centered

# text/images/delays will be passed in when generating the notification

# this manager class should just have a queue of notifications, and have the ability to add, remove, play, stop, pause, etc.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

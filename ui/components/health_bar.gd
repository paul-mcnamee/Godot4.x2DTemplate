extends MarginContainer

@export var health_component: HealthComponent
@export var health_bar: ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var debug_parent = self.get_parent()
	GodotLogger.debug("forgot to add a health component to parent %s at path %s", [debug_parent.name, debug_parent.get_path()])

	if not health_component:
		var cur_parent = self.get_parent()

		# try to find the health component in the parent's children
		var children = cur_parent.get_children()
		for child in children:
			if child is HealthComponent:
				health_component = child
		if not health_component:
			GodotLogger.debug("forgot to add a health component to parent %s at path %s", [cur_parent.name, cur_parent.get_path()])
			return

	if not health_bar:
		var cur_parent = self.get_parent()

		# try to find the health component in the parent's children
		var children = cur_parent.get_children()
		for child in children:
			if child is ProgressBar:
				health_bar = child
		if not health_bar:
			GodotLogger.debug("forgot to add a health bar to parent %s at path %s", [cur_parent.name, cur_parent.get_path()])
			return

	health_bar.max_value = health_component.max_health
	health_bar.value = health_component.current_health
	health_component.health_changed.connect(on_health_changed)
	health_component.max_health_changed.connect(on_max_health_changed)

	if health_component.can_overflow:
		health_bar.allow_greater = true

func on_health_changed(amount: float, type: HealthComponent.TYPES):
	# TODO: could probably visually represent the invuln state here too
	if type == HealthComponent.TYPES.HEALTH:
		GodotLogger.debug("health changed by ", amount)
		health_bar.value = health_component.current_health

func on_max_health_changed(amount: float):
		health_bar.max_value = health_component.max_health
		GodotLogger.debug("max health changed to ", amount)

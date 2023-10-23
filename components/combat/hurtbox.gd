extends Area2D
class_name Hurtbox

@onready var health: HealthComponent = owner.get_component(%HealthComponet)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# get the health component
	if (health):
		pass
		# TODO: not sure if ther eis anything that would need changed here
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_entered(area:Area2D) -> void:
	var intruder_hurtbox = area.owner.get_component(%Hurtbox)
	health.damage(intruder_hurtbox.calculate_damage(owner)) # TODO: implement associated methods.
	pass # Replace with function body.

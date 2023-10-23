extends Area2D
class_name Hurtbox

@onready var health: HealthComponent = owner.get_node("%HealthComponet")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_entered(area:Area2D) -> void:
	var intruder_hithox: Hitbox = area.owner.get_node("%Hitbox")
	if (health):
		health.damage(intruder_hithox.calculate_damage(owner)) # TODO: implement associated methods.
	pass # Replace with function body.

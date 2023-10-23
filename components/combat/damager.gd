extends Node2D
class_name Damager

var base_amount: float = 0.0


func damage_target(target):
	var owner_health: HealthComponent = target.get_node("%HealthComponent")
	if (owner_health):

		# TODO: calculations for resists, defense, etc.
		var defense: Defense = target.get_node("%Defense")
		var total_damage = base_amount - (defense.amount if defense else 0.0)
		owner_health.damage(total_damage)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

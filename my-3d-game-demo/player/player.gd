extends CharacterBody3D


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation_degrees.y-=event.relative.x

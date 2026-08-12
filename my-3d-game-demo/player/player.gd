extends CharacterBody3D


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation_degrees.y-=event.relative.x*0.5
		%Camera3D.rotation_degrees.x-=event.relative.y*0.2
		%Camera3D.rotation_degrees.x=clamp(
			%Camera3D.rotation_degrees.x,-60.0,60.0
		)

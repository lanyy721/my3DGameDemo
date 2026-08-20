extends Node3D
@onready var label: Label = %Label

var play_score=0
func increase_score():
	play_score+=1
	label.text="Score:"+str(play_score)

func _on_mob_spawner_3d_mob_spwen(mob: Variant) -> void:
	mob.died.connect(increase_score)


func _on_kill_plane_body_entered(body: Node3D) -> void:
	get_tree().reload_current_scene.call_deferred()

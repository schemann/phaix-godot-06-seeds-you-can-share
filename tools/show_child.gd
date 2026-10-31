extends SceneTree
## Prints the two child seeds that the video puts side by side. Step 3 adds the seed, the stream and the room's number,
## so child(2, "locks", 4) and child(1, "locks", 5) are the same number.
##   godot --headless --path . -s res://tools/show_child.gd

func _initialize() -> void:
	var seeds: GDScript = load("res://steps/step_03_room_seeds/seeds.gd")
	print("step 3: Seeds.child(2, \"locks\", 4) = %d" % seeds.call("child", 2, "locks", 4))
	print("step 3: Seeds.child(1, \"locks\", 5) = %d" % seeds.call("child", 1, "locks", 5))
	quit(0)

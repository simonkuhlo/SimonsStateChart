extends Sprite2D

@export var state_chart:StateChart

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	rotate(deg_to_rad(10) * delta)
	if Input.is_action_just_pressed("ui_accept"):
		print("Start: ", Time.get_ticks_msec())
		state_chart.send_event("test")


func _on_problematic_state_activated():
	print("Activated: ", Time.get_ticks_msec())


func _on_problematic_state_physics_processing(delta):
	print("Physics processing: ", Time.get_ticks_msec())

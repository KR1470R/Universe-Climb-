extends KinematicBody

var gravity = -9.8
var velocity = Vector3()
var location = Vector3()
var speed = 100

func _physics_process(delta):
	location = Vector3(0,0,0)
	
	
	location = location.normalized()
	location = location*speed*delta
	
	velocity.y += gravity*delta

	
	velocity = move_and_slide_with_snap(velocity, Vector3(1,1,0))
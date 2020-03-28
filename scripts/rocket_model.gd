extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.


var gravity = -9.8
var velocity = Vector3()
var location = Vector3()
var speed = 100

const ACCELERATION = 3
const DE_ACCELERAATION = 5

func _ready():
	pass

func _physics_process(delta):
	location = Vector3(0,0,0)
	
	if Input.is_action_pressed("ui_accept"):
		velocity.y += 1
	elif Input.is_action_pressed("ui_left"):
		velocity.x += 1
	elif Input.is_action_pressed("ui_right"):
		velocity.x -= 1
	location = location.normalized()
	location = location*speed*delta
	
	velocity.y += gravity*delta

	
	velocity = move_and_slide(velocity, Vector3(1,1,0))
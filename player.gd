extends KinematicBody2D

export(float) var speed

func _physics_process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("direita"):
		direction.x += 1
	if Input.is_action_pressed("esquerda"):
		direction.x -= 1
	if Input.is_action_pressed("baixo"):
		direction.y += 1
	if Input.is_action_pressed("cima"):
		direction.y -= 1
		
	move_and_slide(direction.normalized() * speed)

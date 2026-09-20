extends CharacterBody2D
const Pig = 70
const g=98
func _ready():
	velocity.x = Pig
	$AnimatedSprite2D.play("cato")
func _physics_process(delta):
	velocity.y += g
	
	if is_on_wall():
		if !$AnimatedSprite2D.flip_h:
			velocity.x = Pig
		else:
			velocity.x = -Pig
		
	if velocity.x <0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x >0:
		$AnimatedSprite2D.flip_h = true
	move_and_slide()
	

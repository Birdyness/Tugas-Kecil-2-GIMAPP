extends CharacterBody2D

@export var speed := 500
@onready var audio_system: AudioSystem = get_node("../AudioSystem")

func _ready():
	position = Vector2.ZERO
	audio_system.play_music()

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	move_and_slide()

	if direction != Vector2.ZERO:
		audio_system.play_sfx()
	else:
		audio_system.stop_sfx()

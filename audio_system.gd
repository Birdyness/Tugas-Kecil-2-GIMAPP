class_name AudioSystem
extends Node

var music_player := AudioStreamPlayer.new()
var footsteps := AudioStreamPlayer.new()

func _ready():
	add_child(music_player)
	add_child(footsteps)
	music_player.stream = preload("res://Horror Creepy Children Shouting Crying Sound Effect.mp3")
	footsteps.stream = preload("res://Sound Effects - Footsteps.mp3")

func play_music():
	if not music_player.playing:
		music_player.play()

func stop_music():
	music_player.stop()

func play_sfx():
	if not footsteps.playing:
		footsteps.play()

func stop_sfx():
	if footsteps.playing:
		footsteps.stop()

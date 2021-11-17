extends Position2D

#nesse script vamos criar o backend do respawm aleatório dos canos
# criei uma variável que recebe a renderização da cena dos canos
const PIPE = preload("res://Scenes/Pipe.tscn")

func spawn_pipe():
	var pipe_instanced = PIPE.instance()
	randomize()
	var random_pipe_position = rand_range(-113, 5)
	pipe_instanced.position=Vector2(0, random_pipe_position)
	add_child(pipe_instanced)


func _on_Timer_timeout():
	spawn_pipe()

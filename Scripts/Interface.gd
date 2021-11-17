extends CanvasLayer

onready var score_label = get_node("Label")

func _ready():
	score_label.text = str(0)
	
	
	
func increase_score(score):
	score_label.text = str(score)
